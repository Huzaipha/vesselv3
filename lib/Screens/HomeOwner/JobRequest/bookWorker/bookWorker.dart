// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_animated_icons/lottiefiles.dart';
import 'package:lottie/lottie.dart';
import 'package:open_street_map_search_and_pick/open_street_map_search_and_pick.dart';

class bookWorker extends StatefulWidget {
  const bookWorker({super.key});

  @override
  State<bookWorker> createState() => _bookWorkerState();
}

class _bookWorkerState extends State<bookWorker> with TickerProviderStateMixin {
  late AnimationController _bellController;

  @override
  void initState() {
    _bellController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3))
          ..repeat();
    super.initState();
  }

  @override
  void dispose() {
    _bellController.dispose();
    super.dispose();
  }

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
  // -----------------LOCATION--------------------------------------------------
  String locationMessage = 'Your Location';

  // -----------------LOCATION--------------------------------------------------
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
            GestureDetector(
              onTap: () async {
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
            Container(
              height: MediaQuery.of(context).size.height * 1.0,
              decoration: BoxDecoration(border: Border.all()),
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.1,
                child: Center(
                    child: Text(
                  "${_timeOfDay.hour}:${_timeOfDay.minute}",
                  style: otherTextStyle,
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
          child: MaterialButton(
            onPressed: () {
              _showModal(context);
            },
            child: Container(
              margin: EdgeInsets.only(top: 20),
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.06,
              decoration: selectTimeDecoration,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          locationadress.toString(),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
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
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        Text(
          "Note",
          style: TextStyletwo,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 1.0,
          height: MediaQuery.of(context).size.height * 0.2,
          decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
          child: TextField(
            style: TextStyle(fontFamily: "Lato", fontWeight: FontWeight.bold),
            decoration: InputDecoration(
              hintText: "Additional Note",
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
        // ---------------------------------------------------------------------
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),
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
                  onTap: () {
                    showModalBottomSheet(
                      backgroundColor: Colors.white,
                      isScrollControlled: true,
                      context: context,
                      builder: (BuildContext context) {
                        return SizedBox(
                          height: MediaQuery.of(context).size.height * 0.4,
                          width: MediaQuery.of(context).size.height * 1.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Are You Sure",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Lato",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              IconButton(
                                color: Colors.green,
                                onPressed: () {
                                  if (_bellController.isAnimating) {
                                    // _bellController.stop();
                                    _bellController.reset();
                                  } else {
                                    _bellController.repeat();
                                  }
                                },
                                icon: Lottie.asset(
                                  LottieFiles
                                      .$89782_done_icon_with_long_drop_shadow,
                                  controller: _bellController,
                                  height:
                                      MediaQuery.of(context).size.height * 0.2,
                                ),
                              ),
                              MaterialButton(
                                onPressed: () {
                                  _showModal(context);
                                },
                                child: Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.035,
                                  width:
                                      MediaQuery.of(context).size.width * 0.90,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF0A1D56),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4)),
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
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 30),
                    width: MediaQuery.of(context).size.width * 0.4,
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
                  locationadress = pickedData.address.toString();
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
