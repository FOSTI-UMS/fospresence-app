import 'package:flutter/material.dart';
import 'package:fospresence/core/constants/colors.dart';
import 'package:fospresence/core/constants/font.dart';
import 'package:fospresence/config/themes/light_theme.dart';

class AddEventForm extends StatefulWidget {
  const AddEventForm({super.key});

  @override
  State<AddEventForm> createState() => _AddEventFormState();
}

class _AddEventFormState extends State<AddEventForm> {
  DateTime? _selectedDate = DateTime.now();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                  padding: EdgeInsets.only(left: 8.0), child: Text("Event")),
              const SizedBox(height: 5),
              TextFormField(
                style: textDark14,
                decoration: const InputDecoration(hintText: "Type event..."),
              ),
              const SizedBox(height: 20),
              const Padding(
                  padding: EdgeInsets.only(left: 8.0), child: Text("Due Date")),
              const SizedBox(height: 5),
              Material(
                color: Colors.white,
                clipBehavior: Clip.hardEdge,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(width: 0.2, color: lightGrey)),
                child: InkWell(
                  onTap: () async {
                    _selectedDate = await _showDatetimePicker(context);
                    _selectedDate = _selectedDate ?? DateTime.now();
                    setState(() {});
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 15),
                    child: IntrinsicWidth(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {}
                  },
                  child: const Text("Save"),
                ),
              )
            ],
          ),
        ),
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
