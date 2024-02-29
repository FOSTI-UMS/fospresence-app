import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "FOSTI PRESENCE",
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: Stack(
        children: [
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/images/fosti_rectangle_logo.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: List.generate(
                10,
                (index) => Padding(
                  padding: EdgeInsets.fromLTRB(
                    5,
                    5,
                    5,
                    index == 9 ? 5 : 0,
                  ),
                  child: const EventCard(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  const EventCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(
            child: ListTile(
              title: Text("FOSTIFEST"),
              subtitle: Text("Saturday-30-February-2024"),
            ),
          ),
          GestureDetector(
            onTap: () {
              _showSheet(context);
            },
            child: const Icon(Icons.more_vert),
          )
        ],
      ),
    );
  }

  _showSheet(BuildContext context) {
    return showBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return BottomSheet(
          backgroundColor: Colors.transparent,
          enableDrag: false,
          showDragHandle: false,
          onClosing: () {},
          builder: (context) {
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                        children: [
                                          Icon(Icons.done),
                                          Text("Yes")
                                        ],
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
      },
    );
  }
}

class BottomSheetButton extends StatelessWidget {
  const BottomSheetButton({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 2.5,
        child: ElevatedButton(
          onPressed: () {},
          child: Text(text),
        ),
      ),
    );
  }
}
