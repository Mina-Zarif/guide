import 'package:flutter/material.dart';

class OverView extends StatelessWidget {
  const OverView({super.key, required this.overView});

  final String overView;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 50),
      child: Text(
        overView,
        style: const TextStyle(
          fontSize: 20,
        ),
        textAlign: TextAlign.start,
      ),
    );
  }
}
