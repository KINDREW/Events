import 'package:events/constants.dart';

import 'package:events/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Cardform extends StatefulWidget {
  const Cardform({super.key});

  @override
  State<Cardform> createState() => _CardformState();
}
List images = ["MTN.jpeg","vodafone.png","airtel-tigo-money.jpg"];
List options = ["MTN Mobile Money","Vodafone Cash","AirtelTigo Money","GLo"];
int selected = 0;

class _CardformState extends State<Cardform> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          decoration: BoxDecoration(
            border: Border.all(
              width: 2.0,
              color: kprimaryColor
            )
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset("assets/${images[selected]}", width: 30.0,height: 30.0,),
                    SizedBox(width: 10.0,),
                    Text(options[selected], style: TextStyle(
                      color: ktextColor
                    ),),

                  ],
                ),
                TextButton(onPressed: (){
                  showModalBottomSheet(context: context,
                      builder: (BuildContext context){
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        ),
                        color: kprimaryColor,
                      ),
                      height: 300,
                      // width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 30.0,),

                          GestureDetector(
                            onTap: (){
                              setState(() {
                                selected = 0;
                              });
                              Navigator.pop(context);
                            },
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(color: kbackgroundColor)
                                  )
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 8.0),
                                child: Row(
                                  children: [

                                    Image.asset("assets/MTN.jpeg", width: 30.0,height: 30.0,)
                                    ,SizedBox(width: 15.0,),Text("MTN Mobile Money", style: TextStyle(
                                        fontSize: 17.0,color: ktextColor
                                    ),)
                                  ],
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                selected = 1;
                              });
                              Navigator.pop(context);

                            },
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(color: kbackgroundColor)
                                  )
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 8.0),

                                child: Row(
                                  children: [

                                    Image.asset("assets/vodafone.png", width: 30.0,height: 30.0,)
                                    ,SizedBox(width: 15.0,),Text("Vodafone Cash", style: TextStyle(
                                        fontSize: 17.0,color: ktextColor
                                    ),)
                                  ],
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                selected = 2;
                              });
                              Navigator.pop(context);
                            },
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(color: kbackgroundColor)
                                  )
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 8.0),
                                child: Row(
                                  children: [

                                    Image.asset("assets/airtel-tigo-money.jpg", width: 30.0,height: 30.0,)
                                    ,SizedBox(width: 15.0,),Text("AirtelTigo", style: TextStyle(
                                        fontSize: 17.0,color: ktextColor
                                    ),)
                                  ],
                                ),
                              ),
                            ),
                          )



                        ],
                      ),
                    );
                      });
                }, child: Text("Switch"))
              ],
            ),
          ),
        ),
        SizedBox(height: 20,),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            decoration: BoxDecoration(
                border: Border.all(
                    width: 2.0,
                    color: kprimaryColor
                )
            ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Text(" Mobile Number",style: TextStyle(color: Colors.white70),),
              ),
          TextField(
            style: TextStyle(
              color: Colors.white
            ),
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.mobile), // Set your prefix icon here
              border: InputBorder.none,
            ))

            ],
          ),
        ),
        SizedBox(height: 20,),
        Container(
    padding: EdgeInsets.symmetric(horizontal: 15.0),
    decoration: BoxDecoration(
    border: Border.all(
    width: 2.0,
    color: kprimaryColor
    ),

        ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Amount (GHS)", style: TextStyle(color: Colors.grey, fontSize: 20.0),),
                Text("35.00",style: TextStyle(fontSize: 20.0, color: Colors.white),)
              ],
            ),
          ),
        )
      ],

    );
  }
}
