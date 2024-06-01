import 'package:events/constants.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {

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
                  SizedBox(width: 5,),
                  GlowingOverscrollIndicator(
                    axisDirection: AxisDirection.down,
                    color: ktextColor,
                    child: Text(
                      "200 GHC",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: ktextColor,
                        shadows: [
                          Shadow(
                            blurRadius: 10.0,
                            color: ktextColor,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )),
            ),
          ),
        ),

      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/eight.png"), fit: BoxFit.fill),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: (){
                      Navigator.pop(context);
                    }, icon: Icon(Iconsax.arrow_left , color: Colors.white,),),
                    IconButton(onPressed: (){}, icon: Icon(Iconsax.save_2, color: Colors.white,)),


          ],
                ),
    
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                      Icon(Iconsax.calendar , color: Colors.white, size: 18,),
                      SizedBox(width: 5,),
                      Text("25 - 26 Dec, 2023", style: TextStyle(
                          color: ktextColor,
                          fontSize: 16
                      ),)
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Iconsax.clock , color: Colors.white, size: 18,),
                              SizedBox(width: 5,),
                              Text("4pm - 6pm", style: TextStyle(
                                  color: ktextColor,
                                  fontSize: 16

                              ),)
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text("Description",
                        style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(height: 10,),
                      Text("Lorem ipsum dolor sit amet consectetur adipisicing elit. Adipisci, corrupti?Lorem ipsum dolor sit amet consectetur adipisicing elit. Adipisci, corruptiLorem ipsum dolor sit amet consectetur adipisicing elit. Adipisci, corrupti ...",
                        style: TextStyle(color: Colors.white, fontSize: 14),),
                      TextButton(onPressed: (){}, child: Text("Read more", style: TextStyle(
                        fontSize: 18
                      ))),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: Container(
                          height: 120,
                          // width: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.blue
                            ),
                          child: Center(child: Text("Map", style: TextStyle(fontSize: 50),)),
                          ),
                      ),





                    ],
                  ),
                ),
              )
            ],
          ),
        ),

      )
    );

  }
}
