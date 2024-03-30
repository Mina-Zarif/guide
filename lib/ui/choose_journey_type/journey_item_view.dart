import 'package:chat/model/journey_item_model.dart';
import 'package:flutter/material.dart';

class JourneyItemView extends StatelessWidget {
  const JourneyItemView({
    super.key,
    required this.model,
  });

  final JourneyITemModel model;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          SizedBox(
            height: 200,
            width: 250,
            child: Image.asset(
              model.imagePath,
              errorBuilder: (context, error, stackTrace) => const SizedBox(),
              fit: BoxFit.fill,
            ),
          ),
          Container(
            color: Colors.grey.shade400,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2.5),
              child: Text(
                model.title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
