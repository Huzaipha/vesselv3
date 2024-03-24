import 'package:flutter/material.dart';
import 'package:vesselv3/prac/testtwo.dart';

class Testone extends StatefulWidget {
  const Testone({super.key});

  @override
  State<Testone> createState() => _TestoneState();
}

class _TestoneState extends State<Testone> {
  TextEditingController test = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 40,
          width: null,
          child: TextField(
            controller: test,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TestTwo(data: test.text)));
            },
            icon: Icon(Icons.send))
      ],
    );
  }
}
