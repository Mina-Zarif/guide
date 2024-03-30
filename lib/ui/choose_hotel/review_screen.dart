import 'package:flutter/material.dart';

import '../../model/review_model.dart';

class Review extends StatelessWidget {
  const Review({super.key, required this.reviews});

  final List<ReviewModel> reviews;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      child: ListView.builder(
        itemCount: reviews.length,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.person),
            title: Text(reviews[index].author),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(reviews[index].text),
                Row(
                  children: List.generate(
                    5,
                    (starIndex) {
                      return Icon(
                        starIndex < reviews[index].rating
                            ? Icons.star
                            : Icons.star_border,
                        color: Colors.amber,
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
