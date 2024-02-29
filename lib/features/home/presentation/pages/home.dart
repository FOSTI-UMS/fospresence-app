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
      floatingActionButton: FloatingActionButton(onPressed: () {}),
      body: Column(
        children: [
          Container(
              height: 100,
              width: MediaQuery.sizeOf(context).width,
              color: Colors.white),
          Container(
              height: 100,
              width: MediaQuery.sizeOf(context).width,
              color: Colors.white),
          const Spacer(),
        ],
      ),
    );
  }
}
