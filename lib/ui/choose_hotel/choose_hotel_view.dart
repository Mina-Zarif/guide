import 'package:flutter/material.dart';

import 'hotel_item_view.dart';

class ChooseHotelView extends StatelessWidget {
  const ChooseHotelView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Choose Hotel"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 8),
        child: GridView.builder(
          padding: EdgeInsets.zero,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.5,
          ),
          itemBuilder: (context, index) => const HotelItemView(),
          itemCount: 20,
        ),
      ),
    );
  }
}
