import 'package:flutter/material.dart';

import '../../constants.dart';

class OverView extends StatelessWidget {
  const OverView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      child: Text(
        overView,
        style: TextStyle(
          fontSize: 16,
        ),
        textAlign: TextAlign.start,
      ),
    );
  }
}
