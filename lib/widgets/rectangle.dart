import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:events/constants.dart';


class Myrectangle extends StatefulWidget {

  late String eventName;
  String eventDate;
  String eventLocation;



  Myrectangle({super.key,required this.eventName, required this.eventDate,required this.eventLocation});


  @override
  State<Myrectangle> createState() => _MyrectangleState();
}


class _MyrectangleState extends State<Myrectangle> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
      child: GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, "/details");
        },
        child: Container(
          height: 120,
          width: 120,
          decoration: BoxDecoration(
              color: kprimaryColor,
              borderRadius: BorderRadius.circular(15)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 20, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(widget.eventName, style: TextStyle(
                          color: ktextColor,
                          fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Icon(Iconsax.calendar , color: Colors.white,size: 14,),
                        SizedBox(width: 5,),
                        Text(widget.eventDate, style: TextStyle(
                            color: ktextColor

                        ),),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Icon(Iconsax.location , color: Colors.white, size: 14,),
                        SizedBox(width: 5,),
                        Text(widget.eventLocation, style: TextStyle(
                            color: ktextColor
                        ),),
                      ],
                    )
                    // Text(widget.eventLocation),

                  ],
                ),
              )
            ,
            Container(
              height: 120,
              width: 120,
              // color: Colors.black,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(image: AssetImage("assets/Rectangle.png"), fit: BoxFit.cover)
                ),
            )],
          ),

        ),
      ),
    );
  }
}
