import 'package:events/constants.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';


class Dropdown extends StatefulWidget {
  const Dropdown({super.key});

  @override
  State<Dropdown> createState() => _DropdownState();
}
  String item1 = "Regular";
  String item2 = "Vip";
  String item3 = "VVip";
  String title = "Select Ticket";

List pop = ["bread","breader"];

class _DropdownState extends State<Dropdown> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListTile(
        title: Text(title,style: TextStyle(color: ktextColor), ),
        trailing: PopupMenuButton(
          color: kbackgroundColor,
          itemBuilder: (context) => [
            PopupMenuItem(child: Text(item1, style: TextStyle(color: ktextColor),), value: item1,),
            PopupMenuItem(child: Text(item2, style: TextStyle(color: ktextColor)), value: item2,),
            PopupMenuItem(child: Text(item3, style: TextStyle(color: ktextColor)), value: item3,)

          ],
          onSelected: (String newValue){
            setState(() {
              title = newValue;
            });
          }
        ),
      ),
    );
  }
}
