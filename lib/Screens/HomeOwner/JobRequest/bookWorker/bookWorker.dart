// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:flutter/material.dart';

class bookWorker extends StatefulWidget {
  const bookWorker({super.key});

  @override
  State<bookWorker> createState() => _bookWorkerState();
}

class _bookWorkerState extends State<bookWorker> {
  String? _carpenter;
  // -----------------shortcuts------------------------------------
  final otherTextStyle = TextStyle(
      color: Colors.black,
      fontFamily: "Lato",
      fontSize: 14,
      fontWeight: FontWeight.bold);
  // --------------------------------------------------------------
  final TextStyletwo = TextStyle(
    color: Colors.black,
    fontFamily: "Lato",
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );
  // --------------------------------------------------------------------------
  final categoryDecoratin = BoxDecoration(
    border: Border.all(),
    borderRadius: BorderRadius.circular(10),
  );
  // -----------------shortcuts------------------------------------

  Widget MainBody() {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          // if carpenter selected then automatically all the sub-services of carpenter will show here
          Text(
            "Select Service",
            style: TextStyletwo,
          ),
          IconButton(
              onPressed: () {
                setState(() {
                  _carpenter = null;
                });
              },
              icon: Icon(Icons.cancel))
        ]),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          InkWell(
              onTap: () {
                setState(() {
                  _carpenter = "Repairing";
                });
              },
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.15,
                  height: MediaQuery.of(context).size.height * 0.09,
                  decoration: BoxDecoration(
                    color: _carpenter == "Repairing" ? Colors.blue : null,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                      child: Text(
                    "Repairing",
                    textAlign: TextAlign.center,
                    style: otherTextStyle,
                  )))),
          InkWell(
              onTap: () {
                setState(() {
                  _carpenter = "Furniture Installation";
                });
              },
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.15,
                  height: MediaQuery.of(context).size.height * 0.09,
                  decoration: BoxDecoration(
                    color: _carpenter == "Furniture Installation"
                        ? Colors.blue
                        : null,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                      child: Text(
                    "Furniture Installation",
                    textAlign: TextAlign.center,
                    style: otherTextStyle,
                  )))),
          InkWell(
              onTap: () {
                setState(() {
                  _carpenter = "Cabinet Installation";
                });
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.15,
                height: MediaQuery.of(context).size.height * 0.09,
                decoration: BoxDecoration(
                  color:
                      _carpenter == "Cabinet Installation" ? Colors.blue : null,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: Text(
                  "Cabinet Installation",
                  textAlign: TextAlign.center,
                  style: otherTextStyle,
                )),
              ))
        ]),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        Text(
          "Select Time",
          style: TextStyletwo,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        
      ]),
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
          "Worker Name",
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
