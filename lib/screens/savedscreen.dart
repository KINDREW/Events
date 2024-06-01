import 'package:events/constants.dart';
import 'package:events/widgets/container.dart';
import 'package:events/widgets/search_appbar.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:datetimelist/date_picker_timeline.dart';



class SavedScreen extends StatefulWidget {
  const SavedScreen({super.key});

  @override
  State<SavedScreen> createState() => _SavedScreenState();
}
List images = ["eight","nine","ten","Rectangle"];

class _SavedScreenState extends State<SavedScreen> {
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

              Expanded(
                child: GridView.builder(
                    itemCount: images.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                    itemBuilder: (context,index ){
                      return MyContainer(imageName: 'assets/${images[index]}.png');
                    }),
              )


            ],
          ),
        ),
      ),
    );
  }
}
