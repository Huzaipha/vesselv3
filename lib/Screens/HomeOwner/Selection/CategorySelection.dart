// if carpenter is selected in Owner's HomeScreen. Then this page will show all the carpenters.

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:vesselv3/Screens/HomeOwner/Selection/WorkerSelection.dart';
import 'package:vesselv3/routes/route.dart';

class selectCategory extends StatefulWidget {
  const selectCategory({super.key});
  @override
  State<selectCategory> createState() => _selectCategoryState();
}

class _selectCategoryState extends State<selectCategory> {
  // -----------------shortcuts------------------------------------
  final decorations = BoxDecoration(
      border: Border.all(color: Colors.grey),
      borderRadius: BorderRadius.circular(10));
  // ----------------------------------------------------------------
  final nameTextStyle = TextStyle(
    fontFamily: "Lato",
    fontWeight: FontWeight.bold,
  );
  // ----------------------------------------------------------------
  final otherTextStyle = TextStyle(
    fontFamily: "Lato",
    fontSize: 10,
  );
  // -----------------shortcuts------------------------------------
  Widget MainBody() {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Column(
        children: [
          MaterialButton(
            onPressed: () {
              PageRouting.goToNextPage(
                  context: context, navigateTo: WorkerSelection());
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
              width: MediaQuery.of(context).size.width * 1.0,
              height: 70,
              decoration: decorations,
              child: Container(
                margin: EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      // -------------------Image of the Worker-------------------
                      CircleAvatar(
                        backgroundColor: Colors.green,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // -------------------Name of Worker-------------------
                              Text("Rana Haroon", style: nameTextStyle),
                              // -------------------Job of Worker-------------------
                              Text("Cleaning Service", style: otherTextStyle),
                              Row(children: [
                                Icon(Icons.room, size: 20),
                                Text("1 km Away", style: otherTextStyle),
                              ])
                            ]),
                      )
                    ]),
                    Container(
                      margin: EdgeInsets.only(bottom: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.star,
                                color: Colors.orange,
                              )),
                          // -------------------Price of his job-------------------
                          Text("Rs/- 300", style: otherTextStyle),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
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
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
      ),
      body: SafeArea(
        child: ListView(
          children: [MainBody()],
        ),
      ),
    );
  }
}
