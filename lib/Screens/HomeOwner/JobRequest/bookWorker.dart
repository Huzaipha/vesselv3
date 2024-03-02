// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class bookWorker extends StatefulWidget {
  const bookWorker({super.key});

  @override
  State<bookWorker> createState() => _bookWorkerState();
}

class _bookWorkerState extends State<bookWorker> {
  // -----------------shortcuts------------------------------------
  final otherTextStyle = TextStyle(
      color: Colors.black,
      fontFamily: "Lato",
      fontSize: 16,
      fontWeight: FontWeight.bold);
  // --------------------------------------------------------------
  final TextStyletwo = TextStyle(
      color: Colors.white,
      fontFamily: "Lato",
      fontSize: 14,
      fontWeight: FontWeight.bold);
  // -----------------shortcuts------------------------------------

  Widget MainBody() {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Selected Service",
            style: otherTextStyle,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                border: Border.all(),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A1D56),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        title: Text(
          "Rana Haroon",
          style: TextStyletwo,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            MainBody(),
          ],
        ),
      ),
    );
  }
}
