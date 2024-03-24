// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, unused_import, use_key_in_widget_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:vesselv3/Screens/HomeOwner/Selection/CategorySelection.dart';
import 'package:vesselv3/Screens/HomeOwner/Selection/WorkerSelection.dart';
import 'package:vesselv3/Screens/HomeOwner/Services/SeeAllServices.dart';
import 'package:vesselv3/Screens/HomeOwner/OwnerProfile.dart';
import 'package:vesselv3/routes/route.dart';

class OwnerHomePage extends StatefulWidget {
  @override
  State<OwnerHomePage> createState() => _OwnerHomePageState();
}

class _OwnerHomePageState extends State<OwnerHomePage> {
  AppBar buildAppBar() {
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

  int _currentIndex = 0;
  List<Widget> body = [
    //For Home
    LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        // -------------------------------------shorcuts------------------------
        final categoryDecoratin = BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(10),
        );
        // ---------------------------------------------------------------------
        final gradientDecoration = BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors: [
              Colors.blue,
              Colors.deepPurple,
              Colors.white,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        );
        // ---------------------------------------------------------------------
        final BookNowDecoration = BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
          color: Colors.black,
        );
        // ---------------------------------------------------------------------
        final headingTextStyle = TextStyle(
          fontFamily: "Lato",
          fontWeight: FontWeight.bold,
          fontSize: 18,
        );
        // ---------------------------------------------------------------------
        final normTextStyle = TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: "Lato",
            fontSize: 10);
        // ---------------------------------------------------------------------
        final smallTextStyle = TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: "Lato",
            fontSize: 11);
        // -------------------------------------shorcuts------------------------
        return Column(
          children: [
            // ---------------------------ADS-----------------------------------
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

            //---------------------------CATEGORIES-----------------------------
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: headingTextStyle,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See All",
                      style:
                          TextStyle(fontFamily: "Lato", color: Colors.orange),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      PageRouting.goToNextPage(
                          context: context, navigateTo: selectCategory());
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.09,
                      decoration: categoryDecoratin,
                      child: Center(
                          child: Text(
                        "Carpenter",
                        style: normTextStyle,
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      PageRouting.goToNextPage(
                          context: context, navigateTo: selectCategory());
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.09,
                      decoration: categoryDecoratin,
                      child: Center(
                          child: Text(
                        "Plumber",
                        style: normTextStyle,
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      PageRouting.goToNextPage(
                          context: context, navigateTo: selectCategory());
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.09,
                      decoration: categoryDecoratin,
                      child: Center(
                          child: Text(
                        "Painter",
                        style: normTextStyle,
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      PageRouting.goToNextPage(
                          context: context, navigateTo: selectCategory());
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.09,
                      decoration: categoryDecoratin,
                      child: Center(
                          child: Text(
                        "Electricain",
                        style: normTextStyle,
                      )),
                    ),
                  ),
                ],
              ),
            ),

            // ---------------------------Service Near You----------------------
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top Services Near You",
                    style: headingTextStyle,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See All",
                      style:
                          TextStyle(fontFamily: "Lato", color: Colors.orange),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) => SizedBox(
                  width: 20,
                ),
                scrollDirection: Axis.horizontal,
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      // Starts from Here
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: MediaQuery.of(context).size.width * 0.6,
                        decoration: gradientDecoration,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin:
                                  EdgeInsets.only(top: 30, left: 10, right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
// ------------------------------------Worker Name----------------------------------------------------------------------------------
                                  Text(
                                    "Rana Haroon",
                                    style: headingTextStyle,
                                  ),
// ------------------------------------Worker Job Type----------------------------------------------------------------------------------
                                  Text(
                                    "Wood Services",
                                    style: smallTextStyle,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Starting From",
                                        style: smallTextStyle,
                                      ),
// ------------------------------------Worker Reviews----------------------------------------------------------------------------------
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.star,
                                          color: Colors.orange,
                                        ),
                                      ),
                                    ],
                                  ),
// ------------------------------------Worker Pay Rate----------------------------------------------------------------------------------
                                  Text(
                                    "Rs/- 500.",
                                    style: smallTextStyle,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.07,
                              decoration: BookNowDecoration,
                              child: Center(
                                  child: TextButton(
                                      onPressed: () {
                                        PageRouting.goToNextPage(
                                            context: context,
                                            navigateTo: WorkerSelection());
                                      },
                                      child: Text(
                                        "Book Now",
                                        style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          color: Colors.white,
                                          fontFamily: "Lato",
                                        ),
                                      ))),
                            ),
                          ],
                        ),
                      ),
                      // Ends here
                      SizedBox(
                        width: 20,
                      ),
                      // Add more here
                    ],
                  );
                },
              ),
            ),
          ],
        );
      },
    ),
    //for Notification
    Icon(Icons.notifications),
    //For Job
    ElevatedButton(
      onPressed: () {},
      child: Text(
        "Sign In",
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontFamily: "Lato",
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey[900],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        minimumSize: Size(450, 50),
      ),
    ),
    //Help
    Icon(Icons.help),
    //For Profile
    Icon(Icons.person),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      backgroundColor: Colors.white,
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Container(
            child: body[_currentIndex],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Color(0xFF0A1D56),
        backgroundColor: Colors.black,
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: "Notification",
            icon: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: "Job",
            icon: IconButton(
              onPressed: () {
                PageRouting.goToNextPage(
                    context: context, navigateTo: SeeAllServices());
              },
              icon: Icon(
                Icons.work,
                color: Colors.black,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: "Help",
            icon: Icon(
              Icons.help,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: IconButton(
              onPressed: () {
                PageRouting.goToNextPage(
                    context: context, navigateTo: OwnerProfile());
              },
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
