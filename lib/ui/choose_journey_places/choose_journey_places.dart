import 'package:chat/ui/choose_hotel/choose_hotel_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import '../../model/place_model.dart';
import 'map_view.dart';

class ChooseJourneyPlaces extends StatefulWidget {
  const ChooseJourneyPlaces({super.key});

  @override
  State<ChooseJourneyPlaces> createState() => _ChooseJourneyPlacesState();
}

class _ChooseJourneyPlacesState extends State<ChooseJourneyPlaces> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Choose Journey Places"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.55,
            child: MapView(
              places: places,
            ),
          ),
          Expanded(
            child: ListView(children: [
              for (var place in places)
                CheckboxListTile(
                  title: Text(place.title),
                  value: place.showMarker,
                  onChanged: (bool? value) {
                    setState(() {
                      place.showMarker = value!;
                    });
                  },
                ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ChooseHotelView(),
                    ),
                  );
                },
                child: const Text('Visit Now'),
              ),
              const SizedBox(height: 20),
            ]),
          ),
        ],
      ),
    );
  }

  List<PlaceModel> places = [
    PlaceModel(
      title: "Alex Sporting Club",
      marker: const Marker(
        child: Icon(
          Icons.place,
          color: Colors.red,
          size: 40,
        ),
        point: LatLng(31.2045454, 29.9271863),
      ),
      showMarker: true,
    ),
    PlaceModel(
      title: "Wave Cafe",
      marker: const Marker(
        child: Icon(
          Icons.place,
          color: Colors.green,
          size: 40,
        ),
        point: LatLng(31.2045454, 29.9211553),
      ),
      showMarker: true,
    ),
    PlaceModel(
      title: "Roshdy Restaurant",
      marker: const Marker(
        child: Icon(
          Icons.place,
          color: Colors.blue,
          size: 40,
        ),
        point: LatLng(31.219268, 29.9341604),
      ),
      showMarker: true,
    ),
    PlaceModel(
      title: "Taj Mahal",
      marker: const Marker(
        child: Icon(
          Icons.place,
          color: Colors.yellow,
          size: 40,
        ),
        point: LatLng(31.212878, 29.922878),
      ),
      showMarker: true,
    ),
  ];
}
