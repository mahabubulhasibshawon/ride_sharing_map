import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import 'widgets/build_ride_info.dart';
import 'widgets/build_pickup_info.dart'; // Create this widget

class RideMapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Map
          FlutterMap(
            options: MapOptions(
              initialCenter: LatLng(23.90311, 90.32178),
              initialZoom: 14,
            ),
            children: [
              TileLayer(
                urlTemplate:
                'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                subdomains: ['a', 'b', 'c'],
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    point: LatLng(23.90311, 90.32178), // Pickup point
                    width: 40,
                    height: 40,
                    child:
                    Icon(Icons.location_pin, color: Colors.blue, size: 30),
                  ),
                  Marker(
                    point: LatLng(23.89311, 90.33178), // Destination point
                    width: 40,
                    height: 40,
                    child:
                    Icon(Icons.location_pin, color: Colors.red, size: 30),
                  ),
                ],
              ),
              PolylineLayer(
                polylines: [
                  Polyline(
                    points: [
                      LatLng(23.90311, 90.32178), // Start
                      LatLng(23.89811, 90.32678),
                      LatLng(23.89311, 90.33178), // End
                    ],
                    color: Colors.blue,
                    strokeWidth: 4.0,
                  ),
                ],
              ),
            ],
          ),

          // Top Positioned Pickup Card
          Positioned(
            top: 20,
            left: 20,
            right: 20,
            child: BuildPickupInfo(), // New pickup card widget
          ),

          // Bottom Positioned Ride Info Card
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: BuildRideInfo(),
          ),
        ],
      ),
    );
  }
}

