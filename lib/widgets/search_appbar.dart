import 'package:events/constants.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SearchAppBar extends StatefulWidget {
  const SearchAppBar({super.key});

  @override
  State<SearchAppBar> createState() => _SearchAppBarState();
}

class _SearchAppBarState extends State<SearchAppBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
            width:300,
            height: 40,
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kprimaryColor),
                  borderRadius: BorderRadius.circular(30.0),

                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade400),
                  borderRadius: BorderRadius.circular(30.0),


                ),

                fillColor: kprimaryColor,
                filled: true,
                prefixIcon: Icon(Icons.search, color: Colors.white,),

                contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
              ),
            )),
        IconButton(
          onPressed: () {},
          style: IconButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            backgroundColor: kbackgroundColor,
            fixedSize: const Size(55, 55),
          ),
          icon: const Icon(Iconsax.filter, color: ktextColor,),
        )
      ],
    );
  }
}

