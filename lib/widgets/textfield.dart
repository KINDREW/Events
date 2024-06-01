import 'package:events/constants.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Mytextfield extends StatelessWidget {

  final String hintText;
  final IconData icon;

  const Mytextfield({
    super.key,

    required this.hintText,
    required this.icon,


  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(icon),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kprimaryColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade400),

        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100.0)
        ),
        fillColor: kbackgroundColor,
        filled: true,
        hintText: hintText, hintStyle: TextStyle(
          color: ktextColor,
        fontWeight: FontWeight.w300
      ),
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
      ),
    );

  }
}
