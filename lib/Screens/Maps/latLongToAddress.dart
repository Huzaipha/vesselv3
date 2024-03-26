import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_geocoder/geocoder.dart';

class LatLongToAddress extends StatefulWidget {
  const LatLongToAddress({Key? key}) : super(key: key);

  @override
  State<LatLongToAddress> createState() => _LatLongToAddressState();
}

class _LatLongToAddressState extends State<LatLongToAddress> {
  String yourAddress = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('G O O G L E  M A P S'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(yourAddress),
          GestureDetector(
            onTap: () async {
              try {
                Position position = await Geolocator.getCurrentPosition(
                    desiredAccuracy: LocationAccuracy.high);
                Coordinates coordinates =
                    Coordinates(position.latitude, position.longitude);
                var addresses = await Geocoder.local
                    .findAddressesFromCoordinates(coordinates);
                var first = addresses.first;

                setState(() {
                  yourAddress = first.addressLine.toString();
                });
              } catch (e) {
                print("Error: $e");
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.green),
                height: 50,
                child: const Center(
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
