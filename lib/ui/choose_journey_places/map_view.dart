import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import '../../model/place_model.dart';

class MapView extends StatelessWidget {
  const MapView({super.key, required this.places});

  final List<PlaceModel> places;

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: const MapOptions(
        initialCenter: LatLng(31.2045454, 29.9271863),
        initialZoom: 13.0,
      ),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'com.example.app',
        ),
        const CircleLayer(
          circles: <CircleMarker>[
            CircleMarker(
              point: LatLng(31.2075454, 29.9301863),
              radius: 2000,
              useRadiusInMeter: true,
              borderStrokeWidth: 4,
              borderColor: Colors.lightBlueAccent,
              color: Colors.transparent,
              // color: Colors.red,
            ),
          ],
        ),
        MarkerLayer(
          markers: List.generate(places.length, (index) {
            if (places[index].showMarker == false) {
              return const Marker(point: LatLng(0, 0), child: SizedBox());
            }
            return places[index].marker;
          }),
        ),
      ],
    );
  }
}
