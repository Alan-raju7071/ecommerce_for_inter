import 'package:flutter/material.dart';

class Savedscreen extends StatefulWidget {
  const Savedscreen({super.key});

  @override
  State<Savedscreen> createState() => _SavedscreenState();
}

class _SavedscreenState extends State<Savedscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("saved")
        ],
      ),
    );
  }
}