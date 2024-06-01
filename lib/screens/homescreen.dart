import 'package:events/constants.dart';
import 'package:events/widgets/home_app.dart';
import 'package:events/widgets/card.dart';
import 'package:events/widgets/rectangle.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:datetimelist/date_picker_timeline.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

 DateTime now = DateTime.now();

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeAppBar(),
              SizedBox(height: 13),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hello Andrew", style: TextStyle(color: ktextColor),),
                      Text("Let's explore what's happening nearby", style: TextStyle(color: ktextColor),)
                    ],
                  ),
                  Spacer(),
                  CircleAvatar(
                    backgroundColor: Colors.black,
                  ),
                ],
              )
             ,SizedBox(height: 13,)
              ,Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0)
                    ),
                  color: kbackgroundColor,
                ),
                child: DatePicker(
                  DateTime.now(),
                  initialSelectedDate: DateTime.now(),
                  selectionColor: kprimaryColor,
                  selectedTextColor: ktextColor,
                  onDateChange: (date) {
                    // New date selected
                  },
                ),
              ),
            SizedBox(height: 20,),
            Text("All Events", style: TextStyle(color:Colors.white, fontSize: 20.0,fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Container(
                height: 109,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Mycard();
                  },

                ),
              ),
              SizedBox(height: 20,),
              Text("Popular Events", style: TextStyle(color:Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 20,),

              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Myrectangle(eventName: 'Afronation Ghana', eventLocation: 'Untamed Garden', eventDate: '12/21/2021',);
                  },

                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}
