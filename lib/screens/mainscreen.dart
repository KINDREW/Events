import 'package:events/screens/homescreen.dart';
import 'package:events/screens/savedscreen.dart';
import 'package:events/screens/searchscreen.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:events/constants.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

int currentTab = 0;
List screens =  [
  Homescreen(),
  SearchScreen(),
  SavedScreen(),
  Scaffold(),
  Scaffold()
];

class _MainscreenState extends State<Mainscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: kbackgroundColor,
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: (){
                setState(() {
                  currentTab = 0;
                });
              },
              child: Column(
                children: [
                 Icon(currentTab == 0 ? Iconsax.home5 : Iconsax.home,
                   color: currentTab == 0 ? kprimaryColor : Colors.grey,),
                  Text("Home",
                  style: TextStyle(
                    color: currentTab == 0 ? kprimaryColor : Colors.grey,
                  ),)
                ],
              )
            ),
            GestureDetector(
                onTap: (){
                  setState(() {
                    currentTab = 1;
                  });
                },
                child: Column(
                  children: [
                    Icon(currentTab == 1 ? Iconsax.search_normal1 : Iconsax.search_normal,
                      color: currentTab == 1 ? kprimaryColor : Colors.grey,
                    ),
                    Text("Search", style: TextStyle(
                      color: currentTab == 1 ? kprimaryColor : Colors.grey,
                    ),)
                  ],
                )
            ),
            GestureDetector(
                onTap: (){
                  setState(() {
                    currentTab = 2;
                  });
                },
                child: Column(
                  children: [
                    Icon(currentTab == 2 ? Iconsax.save_21 : Iconsax.save_add ,
                      color: currentTab == 2 ? kprimaryColor : Colors.grey,),
                    Center(child: Text("Saved",style: TextStyle(
                      color: currentTab == 2 ? kprimaryColor : Colors.grey,
                    ),))
                  ],
                )
            ),GestureDetector(
                onTap: (){
                  setState(() {
                    currentTab = 3;
                  });
                },
                child: Column(
                  children: [
                    Icon(currentTab == 3 ? Iconsax.ticket : Iconsax.ticket,
                      color: currentTab == 3 ? kprimaryColor : Colors.grey,)
                    ,
                    Text("Tickets",
                    style: TextStyle(
                      color: currentTab == 3 ? kprimaryColor : Colors.grey,
                      fontSize: 14
                    ),)
                  ],
                ),

            ),
            GestureDetector(
              onTap: (){
                setState(() {
                  currentTab = 4;
                });
              },
              child: Column(
                children: [
                  Icon(currentTab == 4 ? Iconsax.setting_21 : Iconsax.setting_24,
                    color: currentTab == 4 ? kprimaryColor : Colors.grey,)
                  ,
                  Text("Settings",
                    style: TextStyle(
                        color: currentTab == 4 ? kprimaryColor : Colors.grey,
                        fontSize: 14
                    ),)
                ],
              ),

            )
          ],
        ),
      ),
      body: screens[currentTab],
    );
  }
}
