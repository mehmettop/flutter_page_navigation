import 'package:flutter/material.dart';

class WFirstPage extends StatefulWidget {
  const WFirstPage({super.key});

  @override
  State<WFirstPage> createState() => WFirstPageState();
}

class WFirstPageState extends State<WFirstPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("First Page"),
    );
    ;
  }
}
