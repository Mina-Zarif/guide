import 'package:chat/model/hotel_model.dart';
import 'package:flutter/material.dart';

import 'details_view.dart';

class HotelItemView extends StatelessWidget {
  const HotelItemView({super.key, required this.model});

  final HotelModel model;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsView(
              hotelModel: model,
            ),
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
                  model.imageUrl,
                  fit: BoxFit.contain,
                  width: 180,
                  errorBuilder: (context, error, stackTrace) => const SizedBox(
                    height: 200,
                    width: 200,
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                ),
                Container(
                  color: Colors.grey.shade400,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 5, vertical: 2.5),
                    child: Text(
                      model.city,
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
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      model.overview,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      children: List.generate(
                        5,
                        (starIndex) {
                          return Icon(
                            starIndex < model.rating
                                ? Icons.star
                                : Icons.star_border,
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
