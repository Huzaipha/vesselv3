// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class jobDescription extends StatefulWidget {
  const jobDescription({super.key});

  @override
  State<jobDescription> createState() => _jobDescriptionState();
}

class _jobDescriptionState extends State<jobDescription> {
  String? _addService;
  String? _LanguageUrdu;
  String? _LanguageEnglish;
  String? _LanguagePunjabi;

  final hintTextStyles =
      TextStyle(color: Colors.grey, fontFamily: "Lato", fontSize: 14);
  final myTextStyles =
      TextStyle(fontFamily: "Lato", fontWeight: FontWeight.bold, fontSize: 14);

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
                "2/2",
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
              value: 1.0,
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
                      style: hintTextStyles,
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Center(
                    child: Text(
                      'Job Description',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Lato",
                          fontSize: 14),
                    ),
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
                "Add Service",
                style: myTextStyles,
              )
            ],
          ),
          Row(
            children: [
              InkWell(
                onDoubleTap: () {
                  setState(() {
                    _addService = null;
                  });
                },
                onTap: () {
                  setState(() {
                    _addService = "Full House Clean";
                  });
                },
                child: Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.35,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                    color:
                        _addService == "Full House Clean" ? Colors.blue : null,
                  ),
                  child: Center(
                      child: Text(
                    "Full House Clean",
                    style: myTextStyles,
                  )),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onDoubleTap: () {
                  setState(() {
                    _addService = null;
                  });
                },
                onTap: () {
                  setState(() {
                    _addService = "Office Clean";
                  });
                },
                child: Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.35,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                    color: _addService == "Office Clean" ? Colors.blue : null,
                  ),
                  child: Center(
                      child: Text(
                    "Office Clean",
                    style: myTextStyles,
                  )),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              InkWell(
                onDoubleTap: () {
                  setState(() {
                    _addService = null;
                  });
                },
                onTap: () {
                  setState(() {
                    _addService = "Move In Cleaning";
                  });
                },
                child: Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.35,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                    color:
                        _addService == "Move In Cleaning" ? Colors.blue : null,
                  ),
                  child: Center(
                      child: Text(
                    "Move In Cleaning",
                    style: myTextStyles,
                  )),
                ),
              ),
              SizedBox(width: 10),
              InkWell(
                onDoubleTap: () {
                  setState(() {
                    _addService = null;
                  });
                },
                onTap: () {
                  setState(() {
                    _addService = "Move Out Cleaning";
                  });
                },
                child: Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.35,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                    color:
                        _addService == "Move Out Cleaning" ? Colors.blue : null,
                  ),
                  child: Center(
                      child: Text(
                    "Move Out Cleaning",
                    style: myTextStyles,
                  )),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Write Description",
            style: myTextStyles,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 1.0,
            height: MediaQuery.of(context).size.height * 0.2,
            decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
            child: TextField(
              style: TextStyle(fontFamily: "Lato", fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                hintText: "Hello",
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontFamily: "Lato",
                  fontSize: 14,
                ),
              ),
              expands: true,
              maxLines: null,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Languages Spoken",
            style: myTextStyles,
          ),
          Row(
            children: [
              InkWell(
                onDoubleTap: () {
                  setState(() {
                    _LanguageUrdu = null;
                  });
                },
                onTap: () {
                  setState(() {
                    _LanguageUrdu = "Urdu";
                  });
                },
                child: Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.25,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                    color: _LanguageUrdu == "Urdu" ? Colors.blue : null,
                  ),
                  child: Center(
                      child: Text(
                    "Urdu",
                    style: myTextStyles,
                  )),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onDoubleTap: () {
                  setState(() {
                    _LanguageEnglish = null;
                  });
                },
                onTap: () {
                  setState(() {
                    _LanguageEnglish = "English";
                  });
                },
                child: Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.25,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                    color: _LanguageEnglish == "English" ? Colors.blue : null,
                  ),
                  child: Center(
                      child: Text(
                    "English",
                    style: myTextStyles,
                  )),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onDoubleTap: () {
                  setState(() {
                    _LanguagePunjabi = null;
                  });
                },
                onTap: () {
                  setState(() {
                    _LanguagePunjabi = "Punjabi";
                  });
                },
                child: Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.25,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                    color: _LanguagePunjabi == "Punjabi" ? Colors.blue : null,
                  ),
                  child: Center(
                      child: Text(
                    "Punjabi",
                    style: myTextStyles,
                  )),
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
