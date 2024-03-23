import 'package:flutter/material.dart';

import '../../model/review_model.dart';

class Review extends StatelessWidget {
  Review({super.key});

  final List<ReviewModel> reviews = [
    ReviewModel('Alice', 4.5, 'Great experience, would definitely come back!'),
    ReviewModel('Bob', 3.0, 'Decent place, but the service could be better.'),
    ReviewModel('Charlie', 5.0, 'Absolutely amazing! Highly recommend.'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
    );
  }
}