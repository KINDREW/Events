import 'package:events/screens/details.dart';
import 'package:events/screens/mainscreen.dart';
import 'package:events/screens/paymentscreen.dart';
import 'package:flutter/material.dart';
import 'package:events/constants.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Biofit",
        colorScheme: ColorScheme.fromSeed(seedColor: kprimaryColor),
        scaffoldBackgroundColor: kbackgroundColor,
        useMaterial3: true,
      ),

      routes: {
        "/" : (context) => Mainscreen(),
        "/details" : (context) => Details(),
        "/payment" : (context) => Payment(),
      },
    );
  }
}