import 'package:flutter/material.dart';

import '../../constants.dart';

class HighLights extends StatelessWidget {
  const HighLights({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      child: Text(
        highLights,
        style: TextStyle(fontSize: 16, height: 1.8),
        textAlign: TextAlign.start,
      ),
    );
  }
}
