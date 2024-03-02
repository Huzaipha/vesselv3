// This page will have the worker's information and book now button after you select the worker from CategorySelection page.

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vesselv3/Screens/HomeOwner/JobRequest/Tabs/firstTab.dart';
import 'package:vesselv3/Screens/HomeOwner/JobRequest/Tabs/secondTab.dart';

class WorkerSelection extends StatefulWidget {
  @override
  State<WorkerSelection> createState() => WWorkerSelectionState();
}

class WWorkerSelectionState extends State<WorkerSelection> {
  
  // -----------------shortcuts------------------------------------
  final otherTextStyle = TextStyle(
    color: Colors.white,
    fontFamily: "Lato",
    fontSize: 10,
  );
  // --------------------------------------------------------------
  final TextStyletwo = TextStyle(
      color: Colors.black,
      fontFamily: "Lato",
      fontSize: 14,
      fontWeight: FontWeight.bold);
  // -----------------shortcuts------------------------------------

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: MediaQuery.of(context).size.height * 0.4,
          backgroundColor: Color(0xFF0A1D56),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          title: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFF0A1D56),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: MediaQuery.of(context).size.height * 0.13,
                      backgroundImage: AssetImage("images/Haroon.jpg"),
                    ),
                    Text(
                      "Rana Haroon",
                      style: otherTextStyle,
                    ),
                    Text(
                      "Carpenter",
                      style: otherTextStyle,
                    ),
                    Text(
                      "0301-1234567",
                      style: otherTextStyle,
                    ),
                  ],
                ),
              )
            ],
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            children: [
              TabBar(tabs: [
                Tab(
                  child: Text(
                    "About",
                    style: TextStyletwo,
                  ),
                ),
                Tab(
                  child: Text(
                    "Reviews",
                    style: TextStyletwo,
                  ),
                ),
              ]),
              Expanded(
                child: TabBarView(
                  children: [
                    // 1st
                    firstTab(),
                    //2nd
                    secondTab(),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.05,
                  decoration: BoxDecoration(
                    color: Color(0xFF0A1D56),
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                      child: Text(
                    "Book Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Lato",
                      fontSize: 14,
                    ),
                  )),
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
