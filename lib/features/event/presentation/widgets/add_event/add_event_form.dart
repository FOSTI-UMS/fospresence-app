import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fospresence/core/commons/widgets/blur_loading.dart';
import 'package:fospresence/core/constants/colors.dart';
import 'package:fospresence/core/constants/font.dart';
import 'package:fospresence/config/themes/light_theme.dart';
import 'package:fospresence/core/commons/utils/value_validator.dart';
import 'package:fospresence/features/event/domain/entities/event/event_entity.dart';
import 'package:fospresence/features/event/presentation/bloc/event/event_bloc.dart';

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

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _edtEventName = TextEditingController();
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
    if (_formKey.currentState!.validate()) {
      _focusNode.unfocus();
      ctx
          .read<EventBloc>()
          .add(EventEvent.createEventPressed(event: eventData));
      _edtEventName.clear();
      _selectedDate = DateTime.now();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: BlocConsumer<EventBloc, EventState>(
        bloc: BlocProvider.of<EventBloc>(context),
        listener: (context, state) {
          print('halo: $state');
        },
        builder: (context, state) {
          return SizedBox(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 90),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          width: MediaQuery.sizeOf(context).width,
                          decoration: BoxDecoration(
                              color: Colors.blue.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(Icons.error_rounded, size: 20),
                              const SizedBox(width: 5),
                              Expanded(
                                child: Text(
                                    "Input the event name in lowercase letters and without spaces",
                                    maxLines: 3,
                                    style: textDark12,
                                    overflow: TextOverflow.fade),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 30),
                        const Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text("Event")),
                        const SizedBox(height: 5),
                        TextFormField(
                          controller: _edtEventName,
                          focusNode: _focusNode,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "You must fill out this form";
                            } else {
                              return valueValidator
                                  .validateEventName(value)
                                  .fold(
                                      (_) => null,
                                      (r) => r.whenOrNull(
                                          invalidEventName: (failedValue) =>
                                              failedValue));
                            }
                          },
                          style: textDark14,
                          decoration: const InputDecoration(
                              hintText: "Type event name..."),
                        ),
                        const SizedBox(height: 20),
                        const Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text("Due Date")),
                        const SizedBox(height: 5),
                        Material(
                          color: Colors.white,
                          clipBehavior: Clip.hardEdge,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(width: 0.2, color: lightGrey)),
                          child: InkWell(
                            onTap: () async {
                              _selectedDate =
                                  await _showDatetimePicker(context);
                              _selectedDate = _selectedDate ?? DateTime.now();
                              setState(() {});
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 15),
                              child: IntrinsicWidth(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                        "${_selectedDate!.month}/${_selectedDate!.day}/${_selectedDate!.year}"),
                                    const SizedBox(width: 30),
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
                            onPressed: () => _createEvent(context),
                            child: const Text("Save"),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                state.isLoading ? const BlurLoading() : const SizedBox()
              ],
            ),
          );
        },
      ),
    );
  }
}

Future<DateTime?> _showDatetimePicker(BuildContext context) {
  return showDatePicker(
      context: context,
      firstDate: DateTime(2024),
      lastDate: DateTime(2050),
      builder: (BuildContext context, Widget? child) => lightTheme(child));
}
