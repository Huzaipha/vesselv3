// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors, camel_case_types

import 'package:flutter/material.dart';

class secondTab extends StatelessWidget {
  final headingTextStyle = TextStyle(
      fontFamily: "Lato",
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.black);
  final normTextStyle =
      TextStyle(fontFamily: "Lato", fontSize: 14, color: Colors.grey);
  Widget firstTabBody() {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Rana Haroon",
            style: headingTextStyle,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "A full time Carpenter doing his job with full potential.\nA full time Carpenter doing his job with full potential.\nA full time Carpenter doing his job with full potential.",
            style: normTextStyle,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Address.",
            style: headingTextStyle,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Shop number FA20/070.",
            style: normTextStyle,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          firstTabBody(),
        ],
      )),
    );
  }
}
