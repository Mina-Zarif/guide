import 'package:chat/ui/choose_journey_type/journey_item_view.dart';
import 'package:flutter/material.dart';

import '../../model/journey_item_model.dart';
import '../choose_journey_places/choose_journey_places.dart';

class JourneyTypeScreen extends StatelessWidget {
  const JourneyTypeScreen({super.key});

  static List<JourneyITemModel> items = <JourneyITemModel>[
    JourneyITemModel(
      imagePath: "assets/images/summer.jpg",
      title: "Summer",
    ),
    JourneyITemModel(
      imagePath: "assets/images/winter(1).jpg",
      title: "Winter",
    ),
    JourneyITemModel(
      imagePath: "assets/images/entertainment_image.jpg",
      title: "Entertainment",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Choose Journey Type"),
      ),
      body: Center(
        child: ListView.separated(
          padding: const EdgeInsetsDirectional.symmetric(vertical: 35),
          itemBuilder: (context, index) => InkWell(
            onTap: () => _navigateToJourneyPage(context, items[index].title),
            child: JourneyItemView(
              model: items[index],
            ),
          ),
          separatorBuilder: (context, index) => const SizedBox(height: 30),
          itemCount: items.length,
        ),
      ),
    );
  }

  void _navigateToJourneyPage(BuildContext context, String journeyType) {
    switch (journeyType) {
      case "Summer":
        break;
      case "Winter":
        break;
      case "Entertainment":
        break;
    }
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ChooseJourneyPlaces(),
      ),
    );
  }
}
