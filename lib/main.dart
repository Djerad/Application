import 'package:flutter/material.dart';
import 'package:gymapp/authentication/Auth.dart';
import 'package:gymapp/Chronometer.dart';
import 'package:gymapp/ManagerUI/DemandCoaching.dart';
import 'package:gymapp/authentication/Getstarted.dart';
import 'package:gymapp/authentication/Login.dart';

import 'package:gymapp/ManagerUI/OurStateShop.dart';
import 'package:gymapp/ManagerUI/OurstateAthlete.dart';
import 'package:gymapp/ManagerUI/ProfileCoach.dart';
import 'package:gymapp/authentication/Signup1.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:gymapp/authentication/Unboarding.dart';
import 'package:gymapp/ManagerUI/edit_our_offers.dart';
import 'package:gymapp/ManagerUI/edit_our_shop.dart';
import 'package:gymapp/ManagerUI/edit_schedule.dart';
import 'package:gymapp/ManagerUI/home_page.dart';
import 'package:gymapp/ManagerUI/listathletes.dart';
import 'package:gymapp/ManagerUI/profileathlete.dart';
import 'authentication/Signup2.dart';
import 'authentication/Signup3.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Getstarted(),
      routes: {
        //  "/": (context) => Auth(),
        "welcome": (context) => const Unboarding(),
        "Login": (context) => Login(),
        "Signup1": (context) => Signup1(),
        "Signup2": (context) => Signup2(),
        "Signup3": (context) => Signup3(),
        "Profile": (context) => Profileathlete(),
        "ListAthletes": (context) => Listathletes(),
        "ProfileCoach": (context) => ProfileCoach(),
        "Demandcoaching": (context) => DemandForCoaching(),
        "HomePage": (context) => HomeView(),
      },
    );
  }
}
