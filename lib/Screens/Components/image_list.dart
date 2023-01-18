import 'package:flutter/material.dart';

import '../../Settings/SizeConfig.dart';

class DealsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Category(image_location: 'assets/s1open.png'),
        Category(image_location: 'assets/s1open.png'),
        Category(image_location: 'assets/s1open.png'),
      ],
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;

  Category({
    required this.image_location,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: SizeConfig.screenWidth * 0.2,
      child: Card(
        child: Image.asset(
          image_location,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}