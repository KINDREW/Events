import 'package:events/constants.dart';
import 'package:flutter/material.dart';

class Price extends StatefulWidget {
  const Price({super.key});

  @override
  State<Price> createState() => _PriceState();
}

class _PriceState extends State<Price> {
  @override
  Widget build(BuildContext context) {
    return GlowingOverscrollIndicator(
      axisDirection: AxisDirection.down,
      color: ktextColor,
      child: Text(
        "35 GHC",
        style: TextStyle(
          fontSize: 20.0,
          color:ktextColor,
          shadows: [
            Shadow(
              blurRadius: 10.0,
              color: ktextColor,
            ),
          ],
        ),
      ),
    );
  }
}
