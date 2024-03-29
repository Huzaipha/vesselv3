// ignore_for_file: prefer_interpolation_to_compose_strings, prefer_const_constructors, prefer_const_declarations, prefer_final_fields

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PolyLineScreen extends StatefulWidget {
  const PolyLineScreen({Key? key}) : super(key: key);

  @override
  State<PolyLineScreen> createState() =>
      _PolyLineScreenState();
}

class _PolyLineScreenState extends State<PolyLineScreen> {
  final Completer<GoogleMapController> _controller = Completer();
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(33.7281138, 72.8263736),
    zoom: 14,
  );

  List<Marker> _marker = [
    Marker(
      markerId: MarkerId('1'),
      position: LatLng(33.7281138, 72.8263736),
      infoWindow: InfoWindow(title: "Huzaifa's Location"),
    ),
    Marker(
      markerId: MarkerId('2'),
      position: LatLng(33.7832, 72.7231),
      infoWindow: InfoWindow(title: "Haroon's Location"),
    ),
  ];

  List<Polyline> _polylines = [];

  Future<Position> getUserCurrentLocation() async {
    await Geolocator.requestPermission().then((value) {
      print('error');
    });
    return await Geolocator.getCurrentPosition();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "M A P S",
          style: TextStyle(
            fontFamily: "Lato",
            fontSize: 14,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.7,
          child: GoogleMap(
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
            onTap: _addMarker,
            initialCameraPosition: _kGooglePlex,
            markers: Set<Marker>.of(_marker),
            polylines: Set<Polyline>.of(_polylines),
            myLocationButtonEnabled: true,
            compassEnabled: true,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          getUserCurrentLocation().then((value) async {
            print('my current location');
            print(value.latitude.toString() + " " + value.longitude.toString());
            _marker.add(Marker(
                markerId: MarkerId('3'),
                position: LatLng(value.latitude, value.longitude),
                infoWindow: InfoWindow(title: 'Your Location')));
            CameraPosition cameraPosition = CameraPosition(
              zoom: 14,
              target: LatLng(value.latitude, value.longitude),
            );

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

  void _addMarker(LatLng position) {
    setState(() {
      _marker.add(
        Marker(
          markerId: MarkerId(position.toString()),
          position: position,
          infoWindow: InfoWindow(title: 'Go to This Location'),
        ),
      );

      _drawRoute(position);
    });
  }

  void _drawRoute(LatLng destination) async {
    final myPosition = await getUserCurrentLocation();
    final List<LatLng> points = [
      LatLng(myPosition.latitude, myPosition.longitude),
      destination,
    ];

    _polylines.add(
      Polyline(
        polylineId: PolylineId('route'),
        color: Colors.blue,
        points: points,
        width: 5,
      ),
    );
  }
}

