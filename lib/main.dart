// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:vesselv3/Screens/HomeOwner/JobRequest/CategorySelection.dart';
import 'package:vesselv3/Screens/HomeOwner/JobRequest/WorkerSelection.dart';
import 'package:vesselv3/Screens/HomeOwner/JobRequest/bookWorker.dart';
import 'package:vesselv3/Screens/HomeOwner/OwnerHomeScreen.dart';
import 'package:vesselv3/Screens/HomeOwner/Services/SeeAllServices.dart';
import 'package:vesselv3/Screens/Worker/Job/PostJob.dart';
import 'package:vesselv3/Screens/splashScreen.dart';

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
      home: WorkerJob(),
    );
  }
}
