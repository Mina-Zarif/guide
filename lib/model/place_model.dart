import 'package:flutter_map/flutter_map.dart';

class PlaceModel {
  String title;
  Marker marker;
  bool showMarker;

  PlaceModel({
    required this.title,
    required this.marker,
    required this.showMarker,
  });
}