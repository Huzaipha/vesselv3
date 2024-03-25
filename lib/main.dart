// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:vesselv3/Screens/HomeOwner/JobRequest/bookWorker/PaymentMode.dart';
import 'package:vesselv3/Screens/IntroScreens/EnterEmail.dart';
import 'package:vesselv3/Screens/IntroScreens/TypeScreen.dart';
import 'package:vesselv3/Screens/IntroScreens/splashScreen.dart';
import 'package:vesselv3/Screens/HomeOwner/Selection/CategorySelection.dart';
import 'package:vesselv3/Screens/HomeOwner/Selection/WorkerSelection.dart';
import 'package:vesselv3/Screens/HomeOwner/JobRequest/bookWorker/bookWorker.dart';
import 'package:vesselv3/Screens/HomeOwner/OwnerHomeScreen.dart';
import 'package:vesselv3/Screens/HomeOwner/Services/SeeAllServices.dart';
import 'package:vesselv3/Screens/Maps/getCurrentLocation.dart';
import 'package:vesselv3/Screens/Maps/latLongToAddress.dart';
import 'package:vesselv3/Screens/Worker/Job/PostJob.dart';
import 'package:vesselv3/Screens/Worker/WorkerHome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: EnterPhoneNumber(),
    );
  }
}
