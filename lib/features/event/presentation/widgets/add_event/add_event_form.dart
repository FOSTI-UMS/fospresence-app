import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fospresence/core/commons/widgets/confirm_password_dialog.dart';
import 'package:fospresence/core/constants/colors.dart';
import 'package:fospresence/core/constants/font.dart';
import 'package:fospresence/core/commons/utils/value_validator.dart';
import 'package:fospresence/core/constants/helper.dart';
import 'package:fospresence/features/event/domain/entities/event/event_entity.dart';
import 'package:fospresence/features/event/presentation/bloc/event/event_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../../core/commons/widgets/datetime_picker.dart';
import '../../../../../core/di/injection_container.dart';

class AddEventForm extends StatefulWidget {
  const AddEventForm({super.key});

  @override
  State<AddEventForm> createState() => _AddEventFormState();
}

class _AddEventFormState extends State<AddEventForm> {
  final valueValidator = sl.get<ValueValidator>();
  DateTime? _selectedDate = DateTime.now();
  final _formKey = GlobalKey<FormState>();
  late final FocusNode _focusNode;
  late final TextEditingController _edtEventName;
  late final GlobalKey<FormState> _formKeyDialog;
  late final TextEditingController _edtPassDialog;
  late final FocusNode _focusNodeDialog;
  String? formattedDatetime;
  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _edtEventName = TextEditingController();
    _formKeyDialog = GlobalKey<FormState>();
    _edtPassDialog = TextEditingController();
    _focusNodeDialog = FocusNode();
    formattedDatetime =
        DateFormat('EEEE, dd MMM yyyy', 'id_ID').format(_selectedDate!);
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _edtEventName.dispose();
    super.dispose();
  }

  void _createEvent(BuildContext ctx) {
    final eventData = EventEntity(
        ref: FirebaseFirestore.instance.collection("events").doc(),
        name: _edtEventName.text,
        datetime: _selectedDate ?? DateTime.now());
    ctx.read<EventBloc>().add(EventEvent.createEventPressed(event: eventData));
    _focusNode.unfocus();
    _edtEventName.clear();
    _selectedDate = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: BlocBuilder<EventBloc, EventState>(
        bloc: BlocProvider.of<EventBloc>(context),
        builder: (context, state) => _buildContent(context),
      ),
    );
  }

  Padding _buildContent(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 20, right: 20, top: distanceWithAppBar),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                  border: globalBorder(context),
                  color: Colors.blue.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.error_rounded, size: 20),
                  const SizedBox(width: 5),
                  Expanded(
                    child: RichText(
                      overflow: TextOverflow.fade,
                      maxLines: 3,
                      text: TextSpan(
                        style: textWhite12,
                        children: [
                          const TextSpan(text: "Format nama proker: "),
                          TextSpan(
                            text: "namaproker24",
                            style: textWhite12.copyWith(
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: "\n*",
                            style: textWhite12.copyWith(
                                fontWeight: FontWeight.bold),
                          ),
                          const TextSpan(
                              text: "24 adalah tahun dilaksanakannya proker")
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Padding(
                padding: EdgeInsets.only(left: 8.0), child: Text("Proker")),
            const SizedBox(height: 5),
            TextFormField(
              controller: _edtEventName,
              focusNode: _focusNode,
              style: textWhite14,
              decoration:
                  const InputDecoration(hintText: "Ketikkan nama proker..."),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Wajib diisi";
                } else {
                  return valueValidator.validateEventName(value).fold(
                      (_) => null,
                      (r) => r.whenOrNull(
                          invalidEventName: (failedValue) => failedValue));
                }
              },
            ),
            const SizedBox(height: 20),
            const Padding(
                padding: EdgeInsets.only(left: 8.0), child: Text("Tanggal")),
            const SizedBox(height: 5),
            Material(
              color: Colors.black,
              clipBehavior: Clip.hardEdge,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(width: 0.25, color: lightGrey)),
              child: InkWell(
                onTap: () async {
                  _selectedDate =
                      await DatetimePicker.showDatetimePicker(context);
                  _selectedDate = _selectedDate ?? DateTime.now();
                  formattedDatetime = DateFormat('EEEE, dd MMM yyyy', 'id_ID')
                      .format(_selectedDate!);
                  setState(() {});
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  decoration: BoxDecoration(
                    color: appDarkBgColor.withOpacity(0.4)
                  ),
                  child: IntrinsicWidth(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("$formattedDatetime", style: textDark14),
                        const SizedBox(width: 25),
                        const Icon(Icons.calendar_month, size: 20),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: MediaQuery.sizeOf(context).width,
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _focusNode.unfocus();
                    ConfirmPassDialog.showConfirmDialog(
                        context: context,
                        onConfirm: _createEvent,
                        formKey: _formKeyDialog,
                        focusNode: _focusNodeDialog,
                        edtPass: _edtPassDialog);
                  }
                },
                child: const Text("Tambah"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
