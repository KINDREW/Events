import 'package:events/constants.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "Eventify",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            height: 1,
            color: ktextColor
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          style: IconButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            backgroundColor: kbackgroundColor,
            fixedSize: const Size(55, 55),
          ),
          icon: const Icon(Iconsax.notification, color: ktextColor,),
        ),
        SizedBox(width:10.0 ),
        IconButton(
          onPressed: () {},
          style: IconButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            backgroundColor: kbackgroundColor,
            fixedSize: const Size(55, 55),
          ),
          icon: const Icon(Iconsax.grid_25, color: ktextColor, ),
        )
      ],
    );
  }
}
