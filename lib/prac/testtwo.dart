import 'dart:developer';

import 'package:flutter/material.dart';

class TestTwo extends StatefulWidget {
  final data;
  const TestTwo({super.key, required this.data});

  @override
  State<TestTwo> createState() => _TestTwoState();
}

class _TestTwoState extends State<TestTwo> {
  @override
  Widget build(BuildContext context) {
    final displaydata = widget.data;
    log(displaydata);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'display ',
        ),
        Text(
          displaydata,
          style: TextStyle(fontSize: 30),
        ),
      ],
    );
  }
}
