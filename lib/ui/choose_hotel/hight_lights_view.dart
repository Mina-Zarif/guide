import 'package:flutter/material.dart';

class HighLights extends StatelessWidget {
  const HighLights({super.key, required this.highLights});

  final String highLights;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 50),
      child: Text(
        highLights,
        style: const TextStyle(fontSize: 18, height: 1.8),
        textAlign: TextAlign.start,
      ),
    );
  }
}
