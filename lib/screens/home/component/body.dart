import 'package:flutter/material.dart';
import 'package:flutter_plants/screens/home/component/featured_plants.dart';
import 'package:flutter_plants/screens/home/component/header.dart';
import 'package:flutter_plants/screens/home/component/recommend_plants.dart';
import 'package:flutter_plants/screens/home/component/title_with_more_button.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Header(size: size),
          TitleWithMoreButton(title: "Recomended", press: () {}),
          RecomendPlants(size: size),
          TitleWithMoreButton(title: "Featured Plants", press: () {}),
          FeaturedPlants(),
        ],
      ),
    );
  }
}
