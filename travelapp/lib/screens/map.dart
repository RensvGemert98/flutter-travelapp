import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  // static const LatLng _pGooglePlex = LatLng(37.4223, -122.0848);
  static const LatLng _pGooglePlex =
      LatLng(51.65614871736962, 5.472711353447924);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
          initialCameraPosition: const CameraPosition(target: _pGooglePlex, zoom: 13),
          markers: {
           const Marker(
                markerId: MarkerId("_currentLocation"),
                icon: BitmapDescriptor.defaultMarker,
                position: _pGooglePlex),
          }),
    );
  }
}
