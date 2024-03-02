// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class OwnerProfile extends StatefulWidget {
  const OwnerProfile({super.key});

  @override
  State<OwnerProfile> createState() => _OwnerProfileState();
}

class _OwnerProfileState extends State<OwnerProfile> {
  final decorationBox = BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Colors.white),
      borderRadius: BorderRadius.circular(5));
  final decorationText = TextStyle(
    fontWeight: FontWeight.bold,
    fontFamily: "Lato",
    fontSize: 15,
  );
  final listTextStyle = TextStyle(
    color: Colors.black,
    fontFamily: "Lato",
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );
  Widget NameRating() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //Name and Ratings
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Rana Haroon Naeem",
                      style: TextStyle(
                        fontFamily: "Lato",
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                      ),

                      //Rating in number

                      Text(
                        "5.0",
                        style: TextStyle(
                          fontFamily: "Lato",
                          fontWeight: FontWeight.bold,
                          fontSize: 08,
                        ),
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(),
                ),
              ],
            ),
          ),

          // Profile Picture

          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.green,
          ),
        ],
      ),
    );
  }

  Widget HelpSetting() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //help
              Container(
                width: 60,
                height: 60,
                decoration: decorationBox,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.help_outline),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Help", style: decorationText),
                  ],
                ),
              ),

              // Wallet
              Container(
                width: 60,
                height: 60,
                decoration: decorationBox,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.wallet),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Wallet", style: decorationText),
                  ],
                ),
              ),

              // setting
              Container(
                width: 60,
                height: 60,
                decoration: decorationBox,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.settings_outlined),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Settings", style: decorationText),
                  ],
                ),
              ),
            ],
          ),

          //Discount

          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.transparent),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Stack(
                children: [
                  Image.asset(
                    "images/purpleandblue2.jpg",
                    fit: BoxFit.cover,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(20),
                            child: Text(
                              "Get a membership!",
                              style: TextStyle(
                                  color: Colors.white, fontFamily: "Lato"),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              left: 20,
                            ),
                            child: Text(
                              "Enjoy a special introductionary discount of 50% off \nyour first order!",
                              style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 207, 201, 201),
                                  fontFamily: "Lato",
                                  fontSize: 07),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Icon(
                          Icons.discount_outlined,
                          size: 80,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget OtherOptions() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(bottom: 20),
          height: 05,
          decoration: BoxDecoration(color: Colors.white),
        ),
        MaterialButton(
          onPressed: () {},
          child: ListTile(
            title: Text(
              "Refer and Earn",
              style: listTextStyle,
            ),
            leading: Icon(
              Icons.message_outlined,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        MaterialButton(
          onPressed: () {},
          child: ListTile(
            title: Text(
              "Languages",
              style: listTextStyle,
            ),
            leading: Icon(
              Icons.language,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        MaterialButton(
          onPressed: () {},
          child: ListTile(
            title: Text(
              "Manage Address",
              style: listTextStyle,
            ),
            leading: Icon(
              Icons.home_outlined,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        MaterialButton(
          onPressed: () {},
          child: ListTile(
            title: Text(
              "Payment Options",
              style: listTextStyle,
            ),
            leading: Icon(
              Icons.payment,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 218, 219, 206),
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        backgroundColor: Color(0xFF0A1D56),
        title: Text(
          "Profile",
          style: TextStyle(
            fontFamily: "Lato",
            color: Colors.white,
            fontSize: 15,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [
              Column(
                children: [
                  NameRating(),
                  HelpSetting(),
                  OtherOptions(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
