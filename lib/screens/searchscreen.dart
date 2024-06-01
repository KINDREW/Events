import 'package:events/constants.dart';
import 'package:events/widgets/container.dart';
import 'package:events/widgets/search_appbar.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:datetimelist/date_picker_timeline.dart';
import 'package:events/widgets/rectangle.dart';



class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}
List images = ["eight","nine","ten","Rectangle"];

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              SearchAppBar(),
              SizedBox(height: 10,),
              DatePicker(
                DateTime.now(),
                initialSelectedDate: DateTime.now(),
                selectionColor: kprimaryColor,
                selectedTextColor: ktextColor,
                onDateChange: (date) {
                  // New date selected
                },
              ),
              SizedBox(height: 10,),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 10,
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
