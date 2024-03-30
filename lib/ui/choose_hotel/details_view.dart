import 'package:chat/model/hotel_model.dart';
import 'package:chat/ui/choose_hotel/review_screen.dart';
import 'package:flutter/material.dart';

import 'hight_lights_view.dart';
import 'overview_view.dart';

class DetailsView extends StatefulWidget {
  const DetailsView({super.key, required this.hotelModel});

  final HotelModel hotelModel;

  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  int index = 0;
  late List<Widget> bodyScreens;

  @override
  void initState() {
    super.initState();
    bodyScreens = [
      OverView(overView: widget.hotelModel.overview),
      HighLights(highLights: widget.hotelModel.highLights),
      Review(reviews: widget.hotelModel.reviews),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hotel Details"),
      ),
      body: Column(
        children: [
          Center(
            child: Image.network(
              widget.hotelModel.imageUrl,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    index = 0;
                  });
                },
                child: Container(
                  width: 80,
                  height: 30,
                  color: (index == 0) ? Colors.deepOrange : Colors.transparent,
                  child: Center(
                    child: Text(
                      "Overview",
                      style: TextStyle(
                        fontSize: 16,
                        color: (index == 0) ? Colors.white : Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    index = 1;
                  });
                },
                child: Container(
                  width: 80,
                  height: 30,
                  color: (index == 1) ? Colors.deepOrange : Colors.transparent,
                  child: Center(
                    child: Text(
                      "Highlights",
                      style: TextStyle(
                        color: (index == 1) ? Colors.white : Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    index = 2;
                  });
                },
                child: Container(
                  width: 80,
                  height: 30,
                  color: (index == 2) ? Colors.deepOrange : Colors.transparent,
                  child: Center(
                    child: Text(
                      "Reviews",
                      style: TextStyle(
                        color: (index == 2) ? Colors.white : Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 25),
          Expanded(child: bodyScreens[index]),
          Text(
            "Price ber day: \$${widget.hotelModel.priceBerDay.toString()}",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              height: 50,
              color: const Color(0xff011e83),
              child: const Center(
                child: Text(
                  "Visit now",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
