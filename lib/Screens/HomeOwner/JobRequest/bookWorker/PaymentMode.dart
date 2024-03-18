import 'package:flutter/material.dart';

class paymentMode extends StatefulWidget {
  const paymentMode({super.key});

  @override
  State<paymentMode> createState() => _paymentModeState();
}

class _paymentModeState extends State<paymentMode> {
  // -----------------shortcuts-------------------------------------------------
  final H1textStyle = TextStyle(
      fontFamily: "Lato",
      fontWeight: FontWeight.bold,
      fontSize: 16,
      color: Colors.black);
  // ---------------------------------------------------------------------------
  final H2textStyle = TextStyle(
      fontFamily: "Lato",
      fontWeight: FontWeight.bold,
      fontSize: 12,
      color: Colors.black);
  // -----------------shortcuts-------------------------------------------------
  Widget MainBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(
            left: 20,
            right: 20,
            top: 20,
          ),
          child: Text(
            "Amount To Pay ",
            style: H1textStyle,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Divider(
          indent: 5,
          endIndent: 5,
        ),
        Container(
          margin: EdgeInsets.only(
            left: 20,
            right: 20,
            top: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Pay By Scanning (Online)",
                style: H2textStyle,
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Divider(
          indent: 5,
          endIndent: 5,
        ),
        Container(
          margin: EdgeInsets.only(
            left: 20,
            right: 20,
            top: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Pay After Service",
                style: H2textStyle,
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Divider(
          indent: 5,
          endIndent: 5,
        ),
      ],
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
          "Select Payment Method",
          style: TextStyle(
            fontFamily: "Lato",
            fontWeight: FontWeight.bold,
            fontSize: 12,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
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
