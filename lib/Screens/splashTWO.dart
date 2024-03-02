// ignore_for_file: prefer_const_constructors, camel_case_types, non_constant_identifier_names, sized_box_for_whitespace, unused_local_variable,, prefer_final_fields

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:vesselv3/Screens/EnterPhoneNumber.dart';

class splashTwo extends StatefulWidget {
  const splashTwo({super.key});

  @override
  State<splashTwo> createState() => _SplashStateTwo();
}

class _SplashStateTwo extends State<splashTwo> {
  double _initial = 0.5;

  String _displayText1 = "Discover Local Service \n Easily and Fast";
  String _displayText2 =
      "Easily find nearby services with our app from plumbers to carpenter etc. Local services discovery made simple";
  bool _showButton = false;
  bool _showNextButton = false;

  Widget _stepIndicator() {
    String value = ((_initial * 2).round()).toString();
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        MaterialButton(
          shape: CircleBorder(),
          onPressed: () {
            setState(() {
              if (_initial < 2.0) {
                _initial += 0.5;
                _showButton = true;
                if (_initial == 1.0) {
                  _displayText1 = "Quality and Affordable \nCombined";
                  _displayText2 =
                      "Superior Quality, Affordable Prices. the Perfect Match For your Budget And Expectation.";
                  _showButton = true;
                } else if (_initial == 1.5) {
                  _displayText1 = "Help Local Business Succeed and Expand";
                  _displayText2 =
                      "Support Local businesses in achieving success and expanding their reach in their communities";
                  _showButton = true;
                } else if (_initial == 2.0) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EnterPhoneNumber(),
                    ),
                  );
                  // _showNextButton = true;
                }
              } else {
                _initial = 0.5;
                _showButton = false;
              }
            });
          },
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 7,
                  top: 6,
                ),
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.orange,
                ),
              ),
              CircularProgressIndicator(
                value: _initial / 2,
                color: Colors.orange,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget MainBody() {
    return Container(
      margin: EdgeInsets.only(top: 200),
      height: 150,
      child: AnimatedTextKit(
        isRepeatingAnimation: true,
        totalRepeatCount: 10,
        animatedTexts: [
          RotateAnimatedText(
            "Convience",
            textStyle: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              fontFamily: "Lato",
              color: Colors.orange,
            ),
          ),
          RotateAnimatedText(
            "Efficiency",
            textStyle: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              fontFamily: "Lato",
              color: Colors.orange,
            ),
          ),
          RotateAnimatedText(
            "Reliability",
            textStyle: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              fontFamily: "Lato",
              color: Colors.orange,
            ),
          ),
        ],
      ),
    );
  }

  Widget lowerBody() {
    return Column(
      children: [
        Center(
          child: Container(
            width: 350,
            height: 100,
            padding: EdgeInsets.only(bottom: 20),
            child: Text(
              _displayText1,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13,
                fontFamily: "Lato",
                color: Colors.white,
              ),
            ),
          ),
        ),
        Center(
          child: Container(
            width: 250,
            height: 70,
            padding: EdgeInsets.only(bottom: 30),
            child: Text(
              _displayText2,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 10,
                fontFamily: "Lato",
                color: Colors.grey,
              ),
            ),
          ),
        ),
        Container(height: 70, child: _stepIndicator()),
        // Conditionally show the button

        Container(
          height: 40,
          child: Visibility(
            visible: _showButton,
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Skip",
                style: TextStyle(color: Colors.orange, fontFamily: "Lato"),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),

        Container(
          height: 30,
          child: Visibility(
            visible: _showNextButton,
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Next Screen",
                style: TextStyle(color: Colors.orange, fontFamily: "Lato"),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Center(
        child: Stack(
          children: [
            Image.asset(
              "images/transparentlogo.png",
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MainBody(),
                lowerBody(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
