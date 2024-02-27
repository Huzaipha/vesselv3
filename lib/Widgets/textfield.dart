// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';

class MyTextFromField extends StatelessWidget {
  final String hintText;
  bool obscureText = false;

  MyTextFromField({super.key, required this.hintText, required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 04,
      ),
      child: TextFormField(
        // cursorHeight: 20,
        obscureText: obscureText,
        style: TextStyle(
          color: Colors.grey,
          fontFamily: "Lato",
        ),
        decoration: InputDecoration(
          fillColor: Colors.transparent,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}
