import 'package:events/constants.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TicketNum extends StatefulWidget {
  const TicketNum({super.key});

  @override
  State<TicketNum> createState() => _TicketNumState();
}
int counter = 0;
class _TicketNumState extends State<TicketNum> {
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Ticket for $counter", style: TextStyle(
          color: ktextColor,
        fontSize: 18),),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: kprimaryColor
          ),
          child: Row(
            children: [
              IconButton(onPressed: (){
                setState(() {
                  counter++;
                });
              }, icon: Icon(Iconsax.add, size: 30,), color: ktextColor,),
              IconButton(onPressed: (){
                setState(() {
                  counter--;
                });
              }, icon: Icon(Iconsax.minus, size: 30),color: ktextColor )
            ],
          ),
        )

      ],
    );
  }
}
