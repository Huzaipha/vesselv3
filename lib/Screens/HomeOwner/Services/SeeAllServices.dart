// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SeeAllServices extends StatefulWidget {
  const SeeAllServices({super.key});

  @override
  State<SeeAllServices> createState() => _SeeAllServicesState();
}

class _SeeAllServicesState extends State<SeeAllServices> {
  // -------------------------------shortcuts---------------------------------------
  String? _carpenter;
  String? _plumber;
  String? _Painter;
  String? _Electrician;
  // ------------------------------------------------------------------------------
  // ------------------------------------------------------------------------------
  // ------------------------------------------------------------------------------
  // ------------------------------------------------------------------------------
  final headingTextStyles = TextStyle(
      fontFamily: "Lato",
      fontWeight: FontWeight.bold,
      fontSize: 18,
      color: Colors.black);
  // ------------------------------------------------------------------------------
  final normTextStyle = TextStyle(fontFamily: "Lato", fontSize: 14);

  // ------------------------------------------------------------------------------
  final categoryDecoratin = BoxDecoration(
    border: Border.all(),
    borderRadius: BorderRadius.circular(10),
  );
  // -------------------------------shortcuts---------------------------------------

  Widget MainBody() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  "Plumber",
                  style: headingTextStyles,
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
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
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
                            color:
                                _carpenter == "Repairing" ? Colors.blue : null,
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Text(
                            "Repairing",
                            textAlign: TextAlign.center,
                            style: normTextStyle,
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
                            style: normTextStyle,
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
                          color: _carpenter == "Cabinet Installation"
                              ? Colors.blue
                              : null,
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                            child: Text(
                          "Cabinet Installation",
                          textAlign: TextAlign.center,
                          style: normTextStyle,
                        )),
                      ))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Plumber",
                    style: headingTextStyles,
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          _plumber = null;
                        });
                      },
                      icon: Icon(Icons.cancel))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                      onTap: () {
                        setState(() {
                          _plumber = "Repairing";
                        });
                      },
                      child: Container(
                          width: MediaQuery.of(context).size.width * 0.15,
                          height: MediaQuery.of(context).size.height * 0.09,
                          decoration: BoxDecoration(
                            color: _plumber == "Repairing" ? Colors.blue : null,
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Text(
                            "Repairing",
                            textAlign: TextAlign.center,
                            style: normTextStyle,
                          )))),
                  InkWell(
                      onTap: () {
                        setState(() {
                          _plumber = "Pipe Installation";
                        });
                      },
                      child: Container(
                          width: MediaQuery.of(context).size.width * 0.15,
                          height: MediaQuery.of(context).size.height * 0.09,
                          decoration: BoxDecoration(
                            color: _plumber == "Pipe Installation"
                                ? Colors.blue
                                : null,
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Text(
                            "Pipe Installation",
                            textAlign: TextAlign.center,
                            style: normTextStyle,
                          )))),
                  InkWell(
                      onTap: () {
                        setState(() {
                          _plumber = "Other";
                        });
                      },
                      child: Container(
                          width: MediaQuery.of(context).size.width * 0.15,
                          height: MediaQuery.of(context).size.height * 0.09,
                          decoration: BoxDecoration(
                            color: _plumber == "Other" ? Colors.blue : null,
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Text(
                            "Other",
                            textAlign: TextAlign.center,
                            style: normTextStyle,
                          )))),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  "Painter",
                  style: headingTextStyles,
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        _Painter = null;
                      });
                    },
                    icon: Icon(Icons.cancel))
              ]),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                      onTap: () {
                        setState(() {
                          _Painter = "Full House";
                        });
                      },
                      child: Container(
                          width: MediaQuery.of(context).size.width * 0.15,
                          height: MediaQuery.of(context).size.height * 0.09,
                          decoration: BoxDecoration(
                            color:
                                _Painter == "Full House" ? Colors.blue : null,
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Text(
                            "Full House",
                            textAlign: TextAlign.center,
                            style: normTextStyle,
                          )))),
                  InkWell(
                      onTap: () {
                        setState(() {
                          _Painter = "One Room";
                        });
                      },
                      child: Container(
                          width: MediaQuery.of(context).size.width * 0.15,
                          height: MediaQuery.of(context).size.height * 0.09,
                          decoration: BoxDecoration(
                            color: _Painter == "One Room" ? Colors.blue : null,
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Text(
                            "One Room",
                            textAlign: TextAlign.center,
                            style: normTextStyle,
                          )))),
                  InkWell(
                      onTap: () {
                        setState(() {
                          _Painter = "Outside";
                        });
                      },
                      child: Container(
                          width: MediaQuery.of(context).size.width * 0.15,
                          height: MediaQuery.of(context).size.height * 0.09,
                          decoration: BoxDecoration(
                            color: _Painter == "Outside" ? Colors.blue : null,
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Text(
                            "Outside",
                            textAlign: TextAlign.center,
                            style: normTextStyle,
                          )))),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  "Electritian",
                  style: headingTextStyles,
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        _Electrician = null;
                      });
                    },
                    icon: Icon(Icons.cancel))
              ]),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                      onTap: () {
                        setState(() {
                          _Electrician = "House Wiring";
                        });
                      },
                      child: Container(
                          width: MediaQuery.of(context).size.width * 0.15,
                          height: MediaQuery.of(context).size.height * 0.09,
                          decoration: BoxDecoration(
                            color: _Electrician == "House Wiring"
                                ? Colors.blue
                                : null,
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Text(
                            "House Wiring",
                            textAlign: TextAlign.center,
                            style: normTextStyle,
                          )))),
                  InkWell(
                      onTap: () {
                        setState(() {
                          _Electrician = "Repairing";
                        });
                      },
                      child: Container(
                          width: MediaQuery.of(context).size.width * 0.15,
                          height: MediaQuery.of(context).size.height * 0.09,
                          decoration: BoxDecoration(
                            color: _Electrician == "Repairing"
                                ? Colors.blue
                                : null,
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Text(
                            "Repairing",
                            textAlign: TextAlign.center,
                            style: normTextStyle,
                          )))),
                  InkWell(
                      onTap: () {
                        setState(() {
                          _Electrician = "Other";
                        });
                      },
                      child: Container(
                          width: MediaQuery.of(context).size.width * 0.15,
                          height: MediaQuery.of(context).size.height * 0.09,
                          decoration: BoxDecoration(
                            color: _Electrician == "Other" ? Colors.blue : null,
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Text(
                            "Other",
                            textAlign: TextAlign.center,
                            style: normTextStyle,
                          )))),
                ],
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
        backgroundColor: Color(0xFF0A1D56),
      ),
      body: SafeArea(
          child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          MainBody(),
        ],
      )),
    );
  }
}
