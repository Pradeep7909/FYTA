import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyMap extends StatefulWidget {
  const MyMap({Key? key}) : super(key: key);

  @override
  State<MyMap> createState() => MyMapState();
}

class MyMapState extends State<MyMap> {
  Completer<GoogleMapController> _controller = Completer();
  static final CameraPosition _kGooglePlex = const CameraPosition(
    target: LatLng(22.6921, 75.8669),
    zoom: 5,
  );

  final List<Marker> _marker = <Marker>[
    Marker(
      markerId: MarkerId('1'),
      position: LatLng(22.742481, 75.891899),
      infoWindow: InfoWindow(title: 'Krishna Hostel'),
    ),
    Marker(
      markerId: MarkerId('1'),
      position: LatLng(22.635415, 75.8640536),
      infoWindow: InfoWindow(title: 'Annpurana Hostel'),
    ),
    Marker(
      markerId: MarkerId('1'),
      position: LatLng(22.6908779, 75.8599315),
      infoWindow: InfoWindow(title: 'Madhav Hostel'),
    ),
    Marker(
      markerId: MarkerId('1'),
      position: LatLng(22.6892809, 75.8969246),
      infoWindow: InfoWindow(title: 'GuruKripa Hostel'),
    ),
    Marker(
      markerId: MarkerId('1'),
      position: LatLng(22.6737314, 75.8800208),
      infoWindow: InfoWindow(title: 'ShriJi Hostel'),
    ),
    Marker(
      markerId: MarkerId('1'),
      position: LatLng(22.720542, 75.8419112),
      infoWindow: InfoWindow(title: 'Ganesh Hostel'),
    ),
  ];

  loadData() {
    getUserCurrentLocation().then((value) async {
      print('My current position');
      print(value.latitude.toString() + " " + value.longitude.toString());

      _marker.add(Marker(
          markerId: MarkerId('2'),
          position: LatLng(value.latitude, value.longitude),
          infoWindow: InfoWindow(title: 'My Current Location')));

      CameraPosition cameraPosition =
          CameraPosition(target: LatLng(value.latitude, value.longitude));

      final GoogleMapController controller = await _controller.future;

      controller
          .animateCamera(CameraUpdate.newCameraPosition((cameraPosition)));

      // setState(() {});
    });
  }

  Future<Position> getUserCurrentLocation() async {
    await Geolocator.requestPermission()
        .then((value) {})
        .onError((error, stackTrace) {
      print("error" + error.toString());
    });

    return await Geolocator.getCurrentPosition();
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: _kGooglePlex,
        zoomGesturesEnabled: true,
        minMaxZoomPreference: MinMaxZoomPreference(11, 18),
        mapType: MapType.normal,
        myLocationEnabled: true,
        compassEnabled: true,
        markers: Set<Marker>.of(_marker),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: FloatingActionButton(
          onPressed: () {
            getUserCurrentLocation().then((value) async {
              print('My current position');
              print(
                  value.latitude.toString() + " " + value.longitude.toString());

              _marker.add(Marker(
                  markerId: MarkerId('2'),
                  position: LatLng(value.latitude, value.longitude),
                  infoWindow: InfoWindow(title: 'My Current Location')));

              CameraPosition cameraPosition = CameraPosition(
                  target: LatLng(value.latitude, value.longitude));

              final GoogleMapController controller = await _controller.future;

              controller.animateCamera(
                  CameraUpdate.newCameraPosition((cameraPosition)));

              // setState(() {});
            });
          },
          child: Icon(Icons.local_activity_outlined),
        ),
      ),
    );
  }
}
