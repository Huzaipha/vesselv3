// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables,  sort_child_properties_last,

import 'package:flutter/material.dart';
import 'package:vesselv3/Screens/Worker/Job/PostJob.dart';
import 'package:vesselv3/Screens/Worker/LocationAccess.dart';
import 'package:vesselv3/Screens/Worker/ServiceRequest.dart';
import 'package:vesselv3/Screens/Worker/WorkerProfile.dart';
import 'package:vesselv3/routes/route.dart';

class HomeScreenWorker extends StatefulWidget {
  const HomeScreenWorker({super.key});

  @override
  State<HomeScreenWorker> createState() => _HomeScreenWorkerState();
}

class _HomeScreenWorkerState extends State<HomeScreenWorker> {
  // -------------------shorcuts------------------------------------------------
  final drawerTextStyle = TextStyle(
      fontFamily: "Lato", color: Colors.black, fontWeight: FontWeight.bold);
  // -------------------shorcuts------------------------------------------------
  Drawer BuildDrawer() {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Worker Name",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "Lato",
                            color: Color(0xFF0A1D56),
                          ),
                        ),
                        Text(
                          "Worker mail/ID",
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: "Lato",
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              MaterialButton(
                onPressed: () {
                  PageRouting.goToNextPage(
                      context: context, navigateTo: WorkerProfile());
                },
                child: ListTile(
                  title: Text(
                    "Profile",
                    style: drawerTextStyle,
                  ),
                  leading: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                onPressed: () {
                  PageRouting.goToNextPage(
                      context: context, navigateTo: WorkerJob());
                },
                child: ListTile(
                  title: Text(
                    "Create a Job",
                    style: drawerTextStyle,
                  ),
                  leading: Icon(
                    Icons.work,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                onPressed: () {
                  PageRouting.goToNextPage(
                      context: context, navigateTo: ServiceRequest());
                },
                child: ListTile(
                  title: Text(
                    "Service Requests",
                    style: drawerTextStyle,
                  ),
                  leading: Icon(
                    Icons.cleaning_services_outlined,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                onPressed: () {},
                child: ListTile(
                  title: Text(
                    "Chat",
                    style: drawerTextStyle,
                  ),
                  leading: Icon(
                    Icons.question_answer,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                indent: 5,
                endIndent: 5,
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Are You Available for Work!",
                  style: TextStyle(
                      color: Colors.white, fontSize: 10, fontFamily: "Lato"),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF0A1D56),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  minimumSize: Size(250, 50),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  AppBar BuildAppBar() {
    return AppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Location",
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Text(
            "Taxila, Taxila Cantt, Rawalpindi",
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      actions: [
        Container(
          margin: EdgeInsets.only(right: 5),
          child: CircleAvatar(
            backgroundColor: Colors.orange,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notification_add_sharp,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget MainBody() {
    return Column(
      children: [
        // ----------------------------------ADS--------------------------------
        SizedBox(
          height: 150,
          // color: Colors.green,
          child: ListView.separated(
            separatorBuilder: (BuildContext context, int index) => SizedBox(
              width: 20,
            ),
            scrollDirection: Axis.horizontal,
            itemCount: 1,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 47),
                    height: 100,
                    width: 350,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 4,
                            blurStyle: BlurStyle.outer,
                            blurRadius: 6,
                            color: Colors.grey)
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Column(
                      children: [
                        Expanded(child: Image.asset("images/1.png")),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              );
            },
          ),
        ),
        SizedBox(
          height: 10,
        ),

        //--------------------------------current Task--------------------------
        Container(
          margin: EdgeInsets.only(left: 10, right: 10, bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Your Current Task",
                style:
                    TextStyle(fontFamily: "Lato", fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "See All",
                  style: TextStyle(fontFamily: "Lato", color: Colors.orange),
                ),
              ),
            ],
          ),
        ),

        SizedBox(
          height: 180,
          child: ListView.separated(
            separatorBuilder: (BuildContext context, int index) => SizedBox(
              width: 20,
            ),
            scrollDirection: Axis.horizontal,
            itemCount: 1,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: 15,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 7, left: 6, right: 6),
                          decoration: BoxDecoration(
                            color: Color(0xFF0A1D56),
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10, right: 10),
                                child: CircleAvatar(
                                  backgroundColor: Colors.green,
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Akash Roy",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Lato",
                                        fontSize: 15),
                                  ),
                                  MaterialButton(
                                    onPressed: () {},
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(right: 10),
                                          child: Icon(
                                            Icons.room,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          "1 Km away",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: "Lato",
                                              fontSize: 8),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 90),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.message,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 2, right: 2),
                              child: Icon(
                                Icons.book,
                                size: 80,
                                color: Colors.orange,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: 5,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Review And Inquiry",
                                    style: TextStyle(
                                        fontFamily: "Lato",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    "Kitchen Cleaning",
                                    style: TextStyle(
                                      fontFamily: "Lato",
                                      fontSize: 10,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Date: Tue 7 May",
                                        style: TextStyle(
                                          fontFamily: "Lato",
                                          fontSize: 07,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        "02;30",
                                        style: TextStyle(
                                          fontFamily: "Lato",
                                          fontSize: 07,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            IconButton(
                                onPressed: () {
                                  PageRouting.goToNextPage(
                                      context: context,
                                      navigateTo: LocationAccess());
                                },
                                icon: Icon(
                                  Icons.arrow_forward_ios,
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              );
            },
          ),
        ),

        // ----------------------------Service Request--------------------------
        Container(
          margin: EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Service Request",
                style:
                    TextStyle(fontFamily: "Lato", fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "See All",
                  style: TextStyle(fontFamily: "Lato", color: Colors.orange),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 180,
          child: ListView.separated(
            separatorBuilder: (BuildContext context, int index) => SizedBox(
              width: 20,
            ),
            scrollDirection: Axis.horizontal,
            itemCount: 1,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: 15,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10, right: 10),
                                child: CircleAvatar(
                                  backgroundColor: Colors.green,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Akash Roy",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Lato",
                                        fontSize: 15),
                                  ),
                                  Text(
                                    "Kitchen and room cleaning",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "Lato",
                                        fontSize: 8),
                                  ),
                                  Text(
                                    "Rs/- 500",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "Lato",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 90),
                                child: IconButton(
                                  onPressed: () {
                                    PageRouting.goToNextPage(
                                        context: context,
                                        navigateTo: ServiceRequest());
                                  },
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 120),
                          margin: EdgeInsets.only(top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.room,
                                    color: Color(0xFF0A1D56),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "1.0 km away",
                                    style: TextStyle(
                                      fontFamily: "Lato",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.calendar_month,
                                    color: Color(0xFF0A1D56),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "7 May, 23",
                                    style: TextStyle(
                                      fontFamily: "Lato",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  Text(
                                    "02:30 pm",
                                    style: TextStyle(
                                      fontFamily: "Lato",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.home,
                                    color: Color(0xFF0A1D56),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "1 Room, floor cleaning",
                                    style: TextStyle(
                                      fontFamily: "Lato",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: BuildDrawer(),
      appBar: BuildAppBar(),
      body: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Column(
              children: [
                MainBody(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
