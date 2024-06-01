import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:events/constants.dart';


class Mycard extends StatelessWidget {
  const Mycard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
      child: Container(
        height: 109,
        width: 120,
        decoration: BoxDecoration(
          color: kprimaryColor,
          borderRadius: BorderRadius.circular(15)
        ),

      ),
    );
  }
}
