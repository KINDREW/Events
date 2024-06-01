import 'package:flutter/material.dart';

class MySquare extends StatefulWidget {
  const MySquare({super.key});

  @override
  State<MySquare> createState() => _MySquareState();
}

class _MySquareState extends State<MySquare> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("bread", style: TextStyle(color: Colors.white),)
    );
  }
}
