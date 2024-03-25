import 'package:flutter/material.dart';

import '../../constants.dart';
import 'details_view.dart';

class HotelItemView extends StatelessWidget {
  const HotelItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const DetailsView(),
          ),
        );
      },
      child: Card(
        child: Row(
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Image.network(
                  imageUrl,
                  fit: BoxFit.contain,
                  width: 180,
                ),
                Container(
                  color: Colors.grey.shade400,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2.5),
                    child: Text(
                      "London",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      overView,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      children: List.generate(
                        5,
                        (starIndex) {
                          return Icon(
                            starIndex < 4 ? Icons.star : Icons.star_border,
                            color: Colors.amber,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
