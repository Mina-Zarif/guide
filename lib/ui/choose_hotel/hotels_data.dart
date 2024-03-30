import '../../model/hotel_model.dart';
import '../../model/review_model.dart';

List<HotelModel> hotels = <HotelModel>[
  HotelModel(
    city: "Cairo",
    imageUrl: "https://cdn.britannica.com/96/115096-050-5AFDAF5D/Bellagio-Hotel-Casino-Las-Vegas.jpg",
    overview: "Historical grandeur near the Pyramids. Luxurious spa. Explore ancient wonders.",
    highLights: "Experience the Pyramids. Luxurious spa nearby.",
    reviews: [
      ReviewModel('Alice', 4.5, 'Great experience, would definitely come back!'),
      ReviewModel('Bob', 3.0, 'Decent place, but the service could be better.'),
      ReviewModel('Charlie', 5.0, 'Absolutely amazing! Highly recommend.'),
    ],
    priceBerDay: 150.0,
    rating: 5,
  ),
  HotelModel(
    city: "Alexandria",
    imageUrl: "https://media.istockphoto.com/id/104731717/photo/luxury-resort.jpg?s=612x612&w=0&k=20&c=cODMSPbYyrn1FHake1xYz9M8r15iOfGz9Aosy9Db7mI=",
    overview: "Pearl of the Mediterranean with sea views. Visit historical sites. Relax in luxury.",
    highLights: "Enjoy sea views. Visit historical sites.",
    reviews: [
      ReviewModel('Diana', 4.0, 'Lovely views and friendly staff.'),
      ReviewModel('Edward', 4.5, 'A perfect getaway by the sea.'),
      ReviewModel('Fiona', 3.5, 'Good food, but rooms were a bit small.'),
    ],
    priceBerDay: 120.0,
    rating: 4,
  ),
  HotelModel(
    city: "Luxor",
    imageUrl: "https://media.istockphoto.com/id/104731717/photo/luxury-resort.jpg?s=612x612&w=0&k=20&c=cODMSPbYyrn1FHake1xYz9M8r15iOfGz9Aosy9Db7mI=",
    overview: "Gateway to ancient Thebes. Explore majestic temples. Discover Valley of the Kings.",
    highLights: "Explore Valley of the Kings. Visit majestic temples.",
    reviews: [
      ReviewModel('George', 5.0, 'The historical sites were breathtaking.'),
      ReviewModel('Hannah', 4.5, 'Luxor is a must-visit! The hotel was perfect.'),
      ReviewModel('Ian', 4.0, 'Great location and services.'),
    ],
    priceBerDay: 200.0,
    rating: 5,
  ),
  HotelModel(
    city: "Aswan",
    imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxlktauUrqVDdwdpreEkQKeARTGZvkx4THmW5XG1appA&s",
    overview: "Nubian culture and scenic vistas with Nile cruises. Visit Philae temple. Experience hospitality.",
    highLights: "Experience Nubian culture. Take Nile cruises.",
    reviews: [
      ReviewModel('Jasmine', 4.5, 'Loved the Nubian culture and the hotel hospitality.'),
      ReviewModel('Kyle', 4.0, 'The view of the Nile was stunning.'),
      ReviewModel('Lila', 5.0, 'An unforgettable experience!'),
    ],
    priceBerDay: 100.0,
    rating: 4,
  ),
  HotelModel(
    city: "Sharm El Sheikh",
    imageUrl: "https://media.istockphoto.com/id/119926339/photo/resort-swimming-pool.jpg?s=612x612&w=0&k=20&c=9QtwJC2boq3GFHaeDsKytF4-CavYKQuy1jBD2IRfYKc=",
    overview: "Red Sea resort paradise with coral reefs. Luxurious resorts. Relax and indulge.",
    highLights: "Discover coral reefs. Enjoy luxury resorts.",
    reviews: [
      ReviewModel('Mona', 5.0, 'Diving here is amazing, and the resort is top-notch.'),
      ReviewModel('Nathan', 4.0, 'Beautiful beaches and excellent service.'),
      ReviewModel('Olivia', 4.5, 'The perfect place for a relaxing holiday.'),
    ],
    priceBerDay: 250.0,
    rating: 5,
  ),
  HotelModel(
    city: "Hurghada",
    imageUrl: "https://static.independent.co.uk/2022/10/03/17/beverley%20hills%20hotel%20main.jpg",
    overview: "Sun-kissed beaches and vibrant nightlife. Explore Giftun Islands. Discover desert adventures.",
    highLights: "Experience vibrant nightlife. Explore Giftun Islands.",
    reviews: [
      ReviewModel('Patrick', 4.0, 'The nightlife is as good as the daytime activities.'),
      ReviewModel('Queenie', 5.0, 'Hurghada is lively and the hotel was amazing.'),
      ReviewModel('Robert', 3.5, 'Good value for money.'),
    ],
    priceBerDay: 180.0,
    rating: 4,
  ),
];

