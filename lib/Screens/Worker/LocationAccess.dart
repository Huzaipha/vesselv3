// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names, non_constant_identifier_names, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:vesselv3/Screens/Maps/getCurrentLocation.dart';
import 'package:vesselv3/routes/route.dart';

class LocationAccess extends StatefulWidget {
  const LocationAccess({super.key});

  @override
  State<LocationAccess> createState() => _LocationAccessState();
}

class _LocationAccessState extends State<LocationAccess> {
  String? locationadress;
  // -------------------------shortcuts---------------------------------------------
  final lowTextStyle = TextStyle(
    color: Colors.grey,
    fontFamily: "Lato",
    fontSize: 8,
    fontWeight: FontWeight.bold,
  );
  // -----------------------------------------------------------------------
  final highTextStyle = TextStyle(
    color: Colors.grey[900],
    fontFamily: "Lato",
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  // -------------------------shortcuts---------------------------------------------
  Widget MainBody() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 60, left: 10, right: 10),
          child: Column(
            children: [
              Image.asset(
                "images/logo.png",
                height: MediaQuery.of(context).size.height * 0.3,
              ),
              Text(
                "Vessel needs your Location Access",
                style: highTextStyle,
              ),
              Text(
                "If you are okay with it, then we will further proceed",
                style: lowTextStyle,
              ),
              MaterialButton(
                onPressed: () {
                  PageRouting.goToNextPage(
                      context: context, navigateTo: GetCurrentLocationScreen());
                },
                child: Container(
                  margin: EdgeInsets.only(top: 20, bottom: 10),
                  height: MediaQuery.of(context).size.height * 0.04,
                  width: MediaQuery.of(context).size.width * 0.8,
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
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    "Back",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Lato",
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        backgroundColor: Color(0xFF0A1D56),
        title: Text(
          "Location Access",
          style: TextStyle(
              color: Colors.white,
              fontFamily: "Lato",
              fontWeight: FontWeight.bold,
              fontSize: 14),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Center(
        child: ListView(
          children: [
            Column(
              children: [MainBody()],
            )
          ],
        ),
      )),
    );
  }
}
