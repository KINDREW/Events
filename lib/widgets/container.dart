import 'package:flutter/material.dart';

class MyContainer extends StatefulWidget {
  String imageName;
  MyContainer({super.key, required this.imageName});

  @override
  State<MyContainer> createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
        // color: Colors.bla,
          border: Border.all(
              color: Colors.black
          )
      ),
      child: Image.asset(widget.imageName),
    );
  }
}
