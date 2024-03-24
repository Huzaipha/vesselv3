// ignore_for_file: prefer_const_constructors, unnecessary_new, prefer_const_declarations, prefer_interpolation_to_compose_strings

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_geocoder/geocoder.dart';

class LatLongToAddress extends StatefulWidget {
  const LatLongToAddress({super.key});

  @override
  State<LatLongToAddress> createState() => _LatLongToAddressState();
}

class _LatLongToAddressState extends State<LatLongToAddress> {
  String Youraddress = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('G O O G L E  M A P S'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(Youraddress),
          GestureDetector(
            onTap: () async {
              // From a query
              final query = "1600 Amphiteatre Parkway, Mountain View";
              var addresses =
                  await Geocoder.local.findAddressesFromQuery(query);
              var second = addresses.first;
              print("${second.featureName} : ${second.coordinates}");

              final coordinates = new Coordinates(33.7281138, 72.8263736);
              var address = await Geocoder.local
                  .findAddressesFromCoordinates(coordinates);
              var first = address.first;

              print("The Address is: " +
                  first.featureName.toString() +
                  first.addressLine.toString());

              setState(() {
                Youraddress = first.addressLine.toString();
              });
            },
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.green),
                height: 50,
                child: Center(
                  child: Text('Convert'),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
