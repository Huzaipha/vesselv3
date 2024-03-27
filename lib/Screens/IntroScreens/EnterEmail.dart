// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vesselv3/SVG/svg.dart';
import 'package:vesselv3/Screens/IntroScreens/TypeScreen.dart';
import 'package:vesselv3/routes/route.dart';

class EnterPhoneNumber extends StatefulWidget {
  @override
  State<EnterPhoneNumber> createState() => _EnterPhoneNumberState();
}

class _EnterPhoneNumberState extends State<EnterPhoneNumber> {
  Widget Mainbody() {
    return Column(
      children: [
        Image.asset(
          "images/logo.png",
          height: 200,
        ),
        Column(
          children: [
            Text(
              "Vessel",
              style: TextStyle(
                color: Colors.grey[900],
                fontFamily: "Lato",
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Center(
              child: Text(
                "'Connecting Services, Creating Smiles.'",
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: "Lato",
                  fontSize: 08,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 40),
              child: Text(
                "Welcome!",
                style: TextStyle(
                  color: Colors.grey[900],
                  fontFamily: "Lato",
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              child: Text(
                "Please Enter Your Valid Email Address.",
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: "Lato",
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 40, right: 40, top: 20),
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black),
              ),
              child: TextField(
                style: TextStyle(
                  fontFamily: "Lato",
                  fontSize: 10,
                ),
                decoration: InputDecoration(
                  hintText: "anyone@example.com",
                  hintStyle: TextStyle(
                      color: Colors.grey, fontFamily: "Lato", fontSize: 10),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      indent: 5,
                      endIndent: 5,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      'or login with',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: "Lato",
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      indent: 5,
                      endIndent: 5,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 40),
                  child: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        SvgImages.facebook,
                      )),
                ),
                Container(
                  child: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        SvgImages.google,
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(left: 40),
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      SvgImages.twitter,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MaterialButton(
                    onPressed: () {
                      PageRouting.goToNextPage(
                          context: context, navigateTo: ChooseType());
                    },
                    child: Container(
                      height: 35,
                      decoration: BoxDecoration(
                        color: Color(0xFF0A1D56),
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      child: Center(
                        child: Text(
                          "Continue",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Lato",
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Skip",
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: "Lato",
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Column(
            children: [
              Mainbody(),
            ],
          ),
        ],
      )),
    );
  }
}
