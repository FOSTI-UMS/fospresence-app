import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fospresence/features/editEvent/presentation/edit_widget_form.dart';

class EventCard extends StatelessWidget {
  const EventCard({super.key});

  @override
  Widget build(BuildContext context) {
    const int listViewLength = 10;
    return MediaQuery.removePadding(
      removeTop: true,
      context: context,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: listViewLength,
          separatorBuilder: (context, index) => const SizedBox(height: 5),
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.only(
                top: index == 0 ? 10 : 0,
                bottom: index == listViewLength - 1 ? 10 : 0),
            child: Container(
              height: 100,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white.withOpacity(0.8)),
              child: Center(
                child: ListTile(
                  title: const Text("FOSTIFEST"),
                  subtitle: const Text("Saturday-30-February-2024"),
                  trailing: GestureDetector(
                      onTap: () => _showSheet(context),
                      child: const Icon(Icons.more_vert)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  _showSheet(BuildContext context) {
    return showBottomSheet(
      backgroundColor: Colors.transparent,
      enableDrag: true,
      context: context,
      builder: (context) => SizedBox(
        height: 160,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 160,
              child: CupertinoActionSheet(
                cancelButton: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text("Close"),
                    ),
                  ),
                ),
                actions: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(
                              builder: (context) => const EditEventForm()))
                          .then((_) => Navigator.of(context).pop());
                    },
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text("Edit"),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => CupertinoAlertDialog(
                          title: const Text("Delete"),
                          actions: [
                            CupertinoDialogAction(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text(
                                "Back",
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ),
                            CupertinoDialogAction(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text(
                                "Yes",
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ),
                          ],
                          content: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: "Are you sure to delete ",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                                TextSpan(
                                  text: "FOSTIFEST ?",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text("Delete"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
