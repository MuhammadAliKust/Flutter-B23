import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapView extends StatelessWidget {
  GoogleMapView({super.key});

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  Set<Marker> markerSet = {
    Marker(markerId: MarkerId('1'), position: LatLng(33.6996, 73.0362)),
    Marker(markerId: MarkerId('2'), position: LatLng(31.5204, 74.3587)),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Google Map")),
      body: GoogleMap(
        mapType: MapType.normal,
        markers: markerSet,
        initialCameraPosition: CameraPosition(
          target: LatLng(33.6996, 73.0362),
          zoom: 14,
        ),
        // zoomControlsEnabled: false,
        // zoomGesturesEnabled: false,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }
}
