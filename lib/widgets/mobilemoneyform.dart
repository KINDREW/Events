import 'package:events/constants.dart';
import 'package:events/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Mobilemoneyform extends StatefulWidget {
  const Mobilemoneyform({super.key});

  @override
  State<Mobilemoneyform> createState() => _MobilemoneyformState();
}

class _MobilemoneyformState extends State<Mobilemoneyform> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Mytextfield(hintText: "Card Number", icon: Iconsax.card,),
          SizedBox(height: 30,),
          Row(
            children: [
              Expanded(child: Mytextfield(hintText: "Expiry", icon: Iconsax.calendar,)),
              SizedBox(width: 20.0,),
              Expanded(child: Mytextfield(hintText: "CVV", icon: Iconsax.password_check,)),
              IconButton(onPressed: (){}, icon: Icon(Icons.question_mark_sharp, color: ktextColor,))
            ],
          ),
          Row(
            children: [
              Checkbox(value: isChecked, onChanged: (newValue){
                setState(() {
                  isChecked = newValue;
                });
              }),
              Text("Save Card", style: TextStyle(color: ktextColor),)
            ],
          ),
          SizedBox(height: 15,),
          Mytextfield(hintText: "Amount (GHS)", icon:Iconsax.icon,)



        ],
      ),
    );
  }
}
