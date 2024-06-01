import 'package:events/constants.dart';
import 'package:events/widgets/paymentOptions.dart';
import 'package:events/widgets/price.dart';
import 'package:events/widgets/ticketnumber.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:events/widgets/dropdown.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}
class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: kbackgroundColor,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, "/payment");
            },
            child: Container(

              decoration: BoxDecoration(
                  color: kprimaryColor,
                  borderRadius: BorderRadius.circular(30)
              ),
              child: Center(child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GlowingOverscrollIndicator(
                    axisDirection: AxisDirection.down,
                    color: ktextColor,
                    child: Text(
                      "Buy Ticket",
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
                  ),
                  
                ],
              )),
            ),
          ),
        ),

      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: Icon(Iconsax.arrow_left , color: Colors.white,),),
              Row(
                children: [
                  SizedBox(width: 40,),
                  Text("Checkout",
                    style: TextStyle(
                        color: Colors.white,
                    fontSize: 40.0, fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 10.0,),
          
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Dropdown(),
                    Price()
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: TicketNum(),
              ),
              SizedBox(height: 20.0,),
              PaymentOptions(),
              SizedBox(height: 10.0,),
              Text("Term and conditions....", style: TextStyle(color: ktextColor),)
             ],
          ),
        ),
      ),
    );
  }
}
