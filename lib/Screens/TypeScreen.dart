// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:vesselv3/Screens/HomeOwner/OwnerHomeScreen.dart';
import 'package:vesselv3/Screens/Worker/WorkerHome.dart';

class ChooseType extends StatefulWidget {
  const ChooseType({super.key});

  @override
  State<ChooseType> createState() => _ChooseTypeState();
}

class _ChooseTypeState extends State<ChooseType> {
  int selectedTabIndex = 0; // 0 for Worker, 1 for HomeOwner

  Widget buildRadioButton(
    int index,
    String title,
    String description,
    String imagePath,
  ) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedTabIndex = index;
        });
      },
      child: Container(
        height: null,
        width: 150,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: selectedTabIndex == index ? Colors.blue : Colors.transparent,
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 7),
              child: CircleAvatar(
                radius: 50,
                child: Image.asset(
                  imagePath,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              title,
              style: TextStyle(
                fontFamily: "Lato",
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color:
                    selectedTabIndex == index ? Colors.white : Colors.grey[900],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              description,
              style: TextStyle(
                fontFamily: "Lato",
                fontSize: 10,
                color: selectedTabIndex == index ? Colors.white : Colors.grey,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }

  Widget MainBody() {
    return Column(
      children: [
        SizedBox(
          height: 150,
          child: Image.asset(
            "images/logo.png",
            height: MediaQuery.of(context).size.height*0.3,
          ),
        ),
        Column(
          children: [
            Text(
              "Vessel",
              style: TextStyle(
                color: Colors.grey[900],
                fontFamily: "Lato",
                fontSize: 25,
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
          ],
        ),
        Column(
          children: [
            Center(
              child: Text(
                "Choose Your Type",
                style: TextStyle(
                  color: Colors.grey[900],
                  fontFamily: "Lato",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Center(
              child: Text(
                "Select Your Role: Are you a job seeker or a customer?",
                style: TextStyle(
                  color: Colors.grey[900],
                  fontFamily: "Lato",
                  fontSize: 12,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Divider(
              indent: 5,
              endIndent: 5,
              color: Colors.grey,
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildRadioButton(
              0,
              "Worker",
              "Grow Your business by connecting to potential customer.",
              "images/worker.png",
            ),
            buildRadioButton(
              1,
              "Home Owner",
              "Search affordable and trustable service provider.",
              "images/worker.png",
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Divider(
          indent: 5,
          endIndent: 5,
          color: Colors.grey,
        ),
        SizedBox(
          height: 15,
        ),
        MaterialButton(
          onPressed: () {
            if (selectedTabIndex == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => WorkerHomePage()),
              );
            } else if (selectedTabIndex == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OwnerHomePage()),
              );
            }
          },
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: Color(0xFF0A1D56),
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
            child: Center(
              child: Text(
                "Continue",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Lato",
                ),
                textAlign: TextAlign.center,
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
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    MainBody(),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
