// ignore_for_file: prefer_const_declarations, prefer_const_constructors, prefer_final_fields

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = const CameraPosition(
    target: LatLng(33.7281138, 72.8263736),
    zoom: 14,
  );

  List<Marker> _marker = [];
  List<Marker> _list = [
    Marker(
        markerId: MarkerId('1'),
        position: LatLng(33.7281138, 72.8263736),
        infoWindow: InfoWindow(title: 'Huzaifas Location')),
    Marker(
      markerId: MarkerId('2'),
      position: LatLng(33.7832, 72.7231),
      infoWindow: InfoWindow(title: "Haroon's Location"),
    )
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _marker.addAll(_list);
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
          GoogleMapController controller = await _controller.future;
          controller.animateCamera(
            CameraUpdate.newCameraPosition(
              CameraPosition(
                target: LatLng(33.7281138, 72.8263736),
                zoom: 14,
              ),
            ),
          );
          setState(() {});
        },
        child: Icon(Icons.room),
      ),
    );
  }
}
