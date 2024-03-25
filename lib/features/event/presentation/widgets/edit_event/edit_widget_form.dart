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

class EditEventForm extends StatefulWidget {
  const EditEventForm({super.key});

  @override
  State<EditEventForm> createState() => _EditEventFormState();
}

class _EditEventFormState extends State<EditEventForm> {
  late final FocusNode _focusNode;
  late final TextEditingController _edtEventName;
  late final GlobalKey<FormState> _formKeyDialog;
  late final TextEditingController _edtPassDialog;
  late final FocusNode _focusNodeDialog;
  final _formKey = GlobalKey<FormState>();
  final _valueValidator = sl.get<ValueValidator>();
  DateTime? _selectedDate = DateTime.now();
  String? _formattedDatetime;
  bool _isArgsInit = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_isArgsInit) {
      final selectedEvent =
          BlocProvider.of<EventBloc>(context).state.selectedEvent;
      _edtEventName.text = selectedEvent!.name.toLowerCase();
      _selectedDate = selectedEvent.datetime;
      _formattedDatetime =
          DateFormat('EEEE, dd MMM yyyy', 'id_ID').format(_selectedDate!);
      _isArgsInit = true;
    }
  }

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _edtEventName = TextEditingController();
    _formKeyDialog = GlobalKey<FormState>();
    _edtPassDialog = TextEditingController();
    _focusNodeDialog = FocusNode();
    _formattedDatetime =
        DateFormat('EEEE, dd MMM yyyy', 'id_ID').format(_selectedDate!);
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _edtEventName.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: BlocBuilder<EventBloc, EventState>(
        bloc: BlocProvider.of<EventBloc>(context),
        builder: (context, state) => _buildContent(context, state),
      ),
    );
  }

  Padding _buildContent(BuildContext context, EventState state) {
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
                  color: tertiaryContainerColor(context),
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
                        style: textWhite12.copyWith(
                            color: onSecondaryContainerColor(context)),
                        children: [
                          const TextSpan(text: "Format nama proker: "),
                          TextSpan(
                            text: "namaproker",
                            style: textWhite12.copyWith(
                                color: onSecondaryContainerColor(context),
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: "\nCatatan:",
                            style: textWhite12.copyWith(
                                color: onSecondaryContainerColor(context),
                                fontWeight: FontWeight.bold),
                          ),
                          const TextSpan(
                              text:
                                  " Nama proker harus sama persis dengan nama proker di QR Code")
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
              style: inputTextStyle(context),
              decoration:
                  const InputDecoration(hintText: "Edit nama proker..."),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Wajib diisi";
                } else {
                  return _valueValidator.validateEventName(value).fold(
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
              color: Colors.transparent,
              clipBehavior: Clip.hardEdge,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(width: 0.25, color: outlineColor(context)),
              ),
              child: InkWell(
                onTap: () async {
                  _selectedDate =
                      await DatetimePicker.showDatetimePicker(context);
                  _selectedDate = _selectedDate ?? DateTime.now();
                  _formattedDatetime = DateFormat('EEEE, dd MMM yyyy', 'id_ID')
                      .format(_selectedDate!);
                  setState(() {});
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  child: IntrinsicWidth(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "$_formattedDatetime",
                          style: textDark14.copyWith(color: textColor(context)),
                        ),
                        const SizedBox(width: 25),
                        Icon(Icons.calendar_month,
                            size: 20, color: textColor(context)),
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
                        onConfirm: (context) {
                          final eventData = EventEntity(
                              ref: state.selectedEvent!.ref,
                              name: _edtEventName.text,
                              datetime: _selectedDate ?? DateTime.now());
                          context.read<EventBloc>().add(
                              EventEvent.editEventPressed(event: eventData));
                          _focusNode.unfocus();
                        },
                        formKey: _formKeyDialog,
                        focusNode: _focusNodeDialog,
                        edtPass: _edtPassDialog);
                  }
                },
                child: const Text("Simpan"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
