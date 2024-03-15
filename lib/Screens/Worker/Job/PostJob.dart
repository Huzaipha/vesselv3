// ignore_for_file: prefer_const_constructors, prefer_const_declarations, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:vesselv3/Screens/Worker/Job/JobDescription.dart';
import 'package:vesselv3/routes/route.dart';

class WorkerJob extends StatefulWidget {
  const WorkerJob({Key? key}) : super(key: key);

  @override
  State<WorkerJob> createState() => _WorkerJobState();
}

class _WorkerJobState extends State<WorkerJob> {

  String? _offerDiscount;
// -----------------------shortcuts---------------------------------------------
  final myTextStyles =
      TextStyle(fontFamily: "Lato", fontWeight: FontWeight.bold, fontSize: 14);
  final hintTextStyles =
      TextStyle(color: Colors.grey, fontFamily: "Lato", fontSize: 10);

  final myTextStyleslow =
      TextStyle(color: Colors.grey, fontFamily: "Lato", fontSize: 8);
// -----------------------shortcuts---------------------------------------------

  Widget upperPart() {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                "1/2",
                style: hintTextStyles,
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            LinearProgressIndicator(
              value: 0.5,
              minHeight: 20,
              color: Color(0xFF0A1D56),
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Center(
                    child: Text(
                      'Job Details',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Lato",
                          fontSize: 14),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Center(
                    child: Text('Job Description', style: hintTextStyles),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget MainBody() {
    return Container(
      padding: EdgeInsets.all(50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Your Service",
                style: myTextStyles,
              ),
            ],
          ),
          Container(
            height: 40,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Container(
              margin: EdgeInsets.only(top: 10),
              child: TextField(
                style: TextStyle(fontFamily: "Lato"),
                decoration: InputDecoration(
                  hintText: "Maid Service",
                  hintStyle: hintTextStyles,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                "City",
                style: myTextStyles,
              ),
            ],
          ),
          Container(
            height: 40,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Container(
              margin: EdgeInsets.only(top: 10),
              child: TextField(
                style: TextStyle(fontFamily: "Lato"),
                decoration: InputDecoration(
                  hintText: "Your City",
                  hintStyle: hintTextStyles,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                "Locality",
                style: myTextStyles,
              ),
            ],
          ),
          Container(
            height: 40,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Container(
              margin: EdgeInsets.only(top: 10),
              child: TextField(
                style: TextStyle(fontFamily: "Lato"),
                decoration: InputDecoration(
                  hintText: "Select your Locality",
                  hintStyle: hintTextStyles,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                "Starting Services From",
                style: myTextStyles,
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: 40,
                width: 80,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Container(
                  margin: EdgeInsets.only(
                    top: 10,
                  ),
                  child: TextField(
                    style: TextStyle(fontFamily: "Lato"),
                    decoration: InputDecoration(
                      hintText: "300",
                      hintStyle: hintTextStyles,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Text("to"),
              SizedBox(
                width: 15,
              ),
              Container(
                height: 40,
                width: 80,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Container(
                  margin: EdgeInsets.only(
                    top: 10,
                  ),
                  child: TextField(
                    style: TextStyle(fontFamily: "Lato"),
                    decoration: InputDecoration(
                      hintText: "9999",
                      hintStyle: hintTextStyles,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                "Do you offer any Discount?",
                style: myTextStyles,
              ),
            ],
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    _offerDiscount = "Yes";
                  });
                },
                child: Container(
                  height: 40,
                  width: 70,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(40),
                    color: _offerDiscount == "Yes" ? Colors.blue : null,
                  ),
                  child: Center(
                      child: Text(
                    "Yes",
                    style: myTextStyles,
                  )),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _offerDiscount = "No";
                  });
                },
                child: Container(
                  height: 40,
                  width: 70,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(40),
                    color: _offerDiscount == "No" ? Colors.blue : null,
                  ),
                  child: Center(
                    child: Text(
                      "No",
                      style: myTextStyles,
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Upload Valid ID Proof",
            style: myTextStyles,
          ),
          LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              final buttonWidth = constraints.maxWidth * 1.0;
              return MaterialButton(
                onPressed: () {},
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(5)),
                  width: buttonWidth,
                  height: 40,
                  child: Container(
                    padding: EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      "Upload Your CNIC",
                      style: hintTextStyles,
                    ),
                  ),
                ),
              );
            },
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Upload Certications",
            style: myTextStyles,
          ),
          LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              final buttonWidth = constraints.maxWidth * 1.0;
              return MaterialButton(
                onPressed: () {},
                child: Container(
                  height: 40,
                  width: buttonWidth,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Container(
                    padding: EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      "Valid Certifications",
                      style: hintTextStyles,
                    ),
                  ),
                ),
              );
            },
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.35,
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    "Back",
                    style: myTextStyles,
                  ),
                ),
              ),
              SizedBox(
                width: 2,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.35,
                child: MaterialButton(
                  onPressed: () {
                    PageRouting.goToNextPage(
                        context: context, navigateTo: jobDescription());
                  },
                  color: Color(0xFF0A1D56),
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      fontFamily: "Lato",
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
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
      ),
      body: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Center(
              child: Column(
                children: [
                  upperPart(),
                  MainBody(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
