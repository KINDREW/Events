import 'package:events/constants.dart';
import 'package:events/widgets/cardform.dart';
import 'package:events/widgets/mobilemoneyform.dart';
import 'package:events/widgets/sqaure.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class PaymentOptions extends StatefulWidget {
  const PaymentOptions({super.key});

  @override
  State<PaymentOptions> createState() => _PaymentOptionsState();
}
  int currentState = 0;
List options= [Mobilemoneyform(),Cardform()];

class _PaymentOptionsState extends State<PaymentOptions> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Expanded(
               child: Container(
                   decoration: BoxDecoration(
                     border: Border(
                       bottom: currentState == 0 ? BorderSide(color: ktextColor) : BorderSide.none
                     )
                   ),
                   child: TextButton(onPressed: (){
                     setState(() {
                       currentState = 0;
                     });
                   }, style: TextButton.styleFrom(
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(0.0), // Set to 0 for rectangular shape
                       )
                   ), child: Text("Card"))),
             ),
             Expanded(
               child: Container(
                   decoration: BoxDecoration(
                       border: Border(
                           bottom: currentState == 1 ? BorderSide(color: ktextColor) : BorderSide.none
                       )
                   ),
                   child: TextButton(onPressed: (){
                     setState(() {
                       currentState = 1;
                     });
                   }, style: TextButton.styleFrom(
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(0.0), // Set to 0 for rectangular shape
                       )
                   ), child: Text("Mobile Money"))),
             )
           ],
         ),
          SizedBox(height: 20.0,),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              child: options[currentState],

            ),
          )
        ],
      ),
    );
  }
}
