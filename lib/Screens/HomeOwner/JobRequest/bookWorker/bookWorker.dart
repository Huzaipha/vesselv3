// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:open_street_map_search_and_pick/open_street_map_search_and_pick.dart';

class bookWorker extends StatefulWidget {
  const bookWorker({super.key});

  @override
  State<bookWorker> createState() => _bookWorkerState();
}

class _bookWorkerState extends State<bookWorker> {
  String? locationadress = "Select Your Location";
  TimeOfDay _timeOfDay = TimeOfDay.now();

  String? _carpenter;
  // -----------------shortcuts-------------------------------------------------
  final otherTextStyle = TextStyle(
      color: Colors.black,
      fontFamily: "Lato",
      fontSize: 10,
      fontWeight: FontWeight.bold);

  final selectTimeDecoration = BoxDecoration(
      border: Border.all(), borderRadius: BorderRadius.circular(5));
  // ---------------------------------------------------------------------------
  final TextStyletwo = TextStyle(
    color: Colors.black,
    fontFamily: "Lato",
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );
  // ---------------------------------------------------------------------------
  final TextStyle3 = TextStyle(
    color: Colors.white,
    fontFamily: "Lato",
    fontSize: 18,
  );
  // ---------------------------------------------------------------------------
  final categoryDecoratin = BoxDecoration(
    border: Border.all(),
    borderRadius: BorderRadius.circular(10),
  );
  // -----------------shortcuts-------------------------------------------------

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
          // sub tyoe of carpenter-------------------
          InkWell(
              onTap: () {
                setState(() {
                  _carpenter = "Repairing";
                });
              },
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.2,
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
                  width: MediaQuery.of(context).size.width * 0.2,
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
          GestureDetector(
              onTap: () {
                setState(() {
                  _carpenter = "Cabinet Installation";
                });
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.2,
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
        // ---------------------------------------------------------------------
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        // -----------------------------------time------------------------------
        Text(
          "Select Time",
          style: TextStyletwo,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        Center(
            child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.1,
          decoration: selectTimeDecoration,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            MaterialButton(
              onPressed: () async {
                final TimeOfDay? timeOfDay = await showTimePicker(
                    context: context,
                    initialTime: _timeOfDay,
                    initialEntryMode: TimePickerEntryMode.dial);
                if (timeOfDay != null) {
                  setState(() {
                    _timeOfDay = timeOfDay;
                  });
                }
              },
              child: Container(
                margin: EdgeInsets.only(left: 10),
                width: MediaQuery.of(context).size.width * 0.35,
                height: MediaQuery.of(context).size.height * 0.1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Please Select Time",
                      style: otherTextStyle,
                    ),
                  ],
                ),
              ),
            ),
            VerticalDivider(
              color: Colors.black,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.35,
                height: MediaQuery.of(context).size.height * 0.1,
                child: Center(
                    child: Text(
                  "${_timeOfDay.hour}:${_timeOfDay.minute}",
                  style: TextStyletwo,
                )))
          ]),
        )),
        // ---------------------------------------------------------------------
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        // -------------------------Location------------------------------------
        Text(
          "Location",
          style: TextStyletwo,
        ),
        Center(
          child: GestureDetector(
            onTap: () {
              _showModal(context);
            },
            child: Container(
              margin: EdgeInsets.only(top: 20),
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.06,
              decoration: selectTimeDecoration,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Icon(Icons.room),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.005,
                        ),
                        Text(
                          "Location: ",
                          style: otherTextStyle,
                        ),
                        Text(
                          locationadress ?? "Select Your Location",
                          style: otherTextStyle,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        // ---------------------------------------------------------------------
      ]),
    );
  }

// ---------------------------Book now button---------------------------
  Widget bottomButton() {
    return Positioned(
        left: 0,
        right: 0,
        bottom: 0,
        child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Rs/- 500",
                        style: TextStyletwo,
                      ),
                      Text(
                        "Total Amount",
                        style: otherTextStyle,
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.only(right: 30),
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: MediaQuery.of(context).size.height * 0.05,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        color: Color(0xFF0A1D56),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        "Book Now",
                        style: TextStyle3,
                      ),
                    ),
                  ),
                )
              ],
            )));
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
          style: TextStyle3,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              physics: BouncingScrollPhysics(),
              children: [
                MainBody(),
              ],
            ),
            bottomButton(),
          ],
        ),
      ),
    );
  }

// ----------------------Location Method----------------------------------------
  void _showModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return SizedBox(
          height: null,
          child: Center(
            child: OpenStreetMapSearchAndPick(
              // center: LatLong(23, 89),
              buttonColor: Colors.blue,
              buttonText: 'Set Current Location',
              onPicked: (pickedData) {
                print(pickedData.address);
                Navigator.pop(context);
                setState(() {
                  locationadress = pickedData.address as String;
                });
                // Handle picked data
              },
            ),
          ),
        );
      },
    );
  }
}
