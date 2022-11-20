import 'package:flutter/material.dart';

class WSecondPage extends StatefulWidget {
  const WSecondPage({super.key});

  @override
  State<WSecondPage> createState() => WSecondPageState();
}

class WSecondPageState extends State<WSecondPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Second Page"),
    );
  }
}
