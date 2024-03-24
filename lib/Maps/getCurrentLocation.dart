// ignore_for_file: prefer_const_constructors, prefer_final_fields, prefer_const_declarations, prefer_interpolation_to_compose_strings, avoid_print

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GetCurrentLocationScreen extends StatefulWidget {
  const GetCurrentLocationScreen({super.key});

  @override
  State<GetCurrentLocationScreen> createState() =>
      _GetCurrentLocationScreenState();
}

class _GetCurrentLocationScreenState extends State<GetCurrentLocationScreen> {
  final Completer<GoogleMapController> _controller = Completer();
  static final CameraPosition _kGooglePlex = const CameraPosition(
    target: LatLng(33.7281138, 72.8263736),
    zoom: 14,
  );
  List<Marker> _marker = [

    // adding random Markers
    Marker(
      markerId: MarkerId('1'),
      position: LatLng(33.7281138, 72.8263736),
      infoWindow: InfoWindow(title: 'Huzaifas Location'),
    ),
  ];

  Future<Position> getUserCurrentLocation() async {
    await Geolocator.requestPermission().then((value) {
      print('error');
    });
    return await Geolocator.getCurrentPosition();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GoogleMap(
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
          initialCameraPosition: _kGooglePlex,
          markers: Set<Marker>.of(_marker),
          myLocationButtonEnabled: true,
          compassEnabled: true,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          getUserCurrentLocation().then((value) async {
            print('my current location');
            print(value.latitude.toString() + " " + value.longitude.toString());
            _marker.add(Marker(
                markerId: MarkerId('2'),
                // Getting Current Location
                position: LatLng(value.latitude, value.longitude),
                infoWindow: InfoWindow(title: 'Current Location')));
            CameraPosition cameraPosition = CameraPosition(
                zoom: 14, target: LatLng(value.latitude, value.longitude));

            final GoogleMapController controller = await _controller.future;
            controller
                .animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
            setState(() {});
          });
        },
        child: Icon(Icons.room),
      ),
    );
  }
}
