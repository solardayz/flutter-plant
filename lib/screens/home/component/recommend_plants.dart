import 'package:flutter/material.dart';
import 'package:flutter_plants/screens/details/detail_screen.dart';

import '../../../constants.dart';

class RecomendPlants extends StatelessWidget {
  const RecomendPlants({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommandPlantCard(
            size: size,
            image: "assets/images/image_1.png",
            title: "Samantha",
            country: "Russia",
            price: 400,
            press: () {
              print("image_1");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailScreen()),
              );
            },
          ),
          RecommandPlantCard(
            size: size,
            image: "assets/images/image_2.png",
            title: "Angelica",
            country: "Russia",
            price: 420,
            press: () {
              print("image_2");
            },
          ),
          RecommandPlantCard(
            size: size,
            image: "assets/images/image_3.png",
            title: "Samantha",
            country: "Russia",
            price: 450,
            press: () {
              print("image_3");
            },
          ),
        ],
      ),
    );
  }
}

class RecommandPlantCard extends StatelessWidget {
  const RecommandPlantCard({
    Key? key,
    required this.size,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press,
  }) : super(key: key);

  final Size size;
  final String image, title, country;
  final int price;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset('$image'),
          GestureDetector(
            onTap: () {
              print("23423424234234");
            },
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23),
                    ),
                  ]),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '$title\n'.toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: '$country'.toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context).textTheme.button!.copyWith(
                          color: kPrimaryColor,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
