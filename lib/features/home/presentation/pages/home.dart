import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
      floatingActionButton: FloatingActionButton(onPressed: () {}),
      body: Column(
        children: [
          Container(
            height: 100,
            width: MediaQuery.sizeOf(context).width,
            color: Colors.white,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ListTile(
                    title: Text("FOSTIFEST"),
                  ),
                ),
                Icon(Icons.more_vert)
              ],
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
