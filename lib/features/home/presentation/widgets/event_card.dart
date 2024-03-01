import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  const EventCard({super.key});

  @override
  Widget build(BuildContext context) {
    const int listViewLength = 10;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: ListView.separated(
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
    );
  }

  _showSheet(BuildContext context) {
    return showBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height / 6,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 2.5,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Update'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 2.5,
                  child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text(
                            'Are you sure?',
                            style: Theme.of(context).textTheme.bodyLarge,
                            textAlign: TextAlign.center,
                          ),
                          actions: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Row(
                                    children: [
                                      Icon(Icons.close),
                                      Text("Cancel")
                                    ],
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Row(
                                    children: [Icon(Icons.done), Text("Yes")],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    },
                    child: const Text('Delete'),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
