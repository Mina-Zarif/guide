import 'package:chat/model/review_model.dart';

class HotelModel {
  final String city;
  final String imageUrl;
  final String overview;
  final String highLights;
  final List<ReviewModel> reviews;
  final double priceBerDay;
  final int rating;

  HotelModel({
    required this.city,
    required this.imageUrl,
    required this.overview,
    required this.highLights,
    required this.reviews,
    required this.priceBerDay,
    required this.rating,
  });
}
