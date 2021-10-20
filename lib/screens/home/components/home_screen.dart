import 'package:flutter/material.dart';
import 'package:flutter_plants/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: body(size, context),
    );
  }

  Container body(Size size, BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Header(size, context),
          titileWithMoreButton(),
        ],
      ),
    );
  }

  Row titileWithMoreButton() {
    return Row(
      children: [
        Container(
          height: 24,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: kDefaultPadding / 4),
                child: Text(
                  'Recomended',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  margin: EdgeInsets.only(right: kDefaultPadding / 4),
                  height: 7,
                  color: kPrimaryColor.withOpacity(0.2),
                ),
              )
            ],
          ),
        ),
        Spacer(),
        TextButton(
          onPressed: () {},
          child: Text(
            'More',
            style: TextStyle(
              color: Colors.white,
              backgroundColor: kPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }

  Container Header(Size size, BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultPadding,
        right: kDefaultPadding,
        bottom: kDefaultPadding,
      ),
      height: size.height * 0.2,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(36),
          bottomRight: Radius.circular(36),
        ),
      ),
      child: Row(
        children: [
          Text(
            'Hi Unishopy!',
            style: Theme.of(context).textTheme.headline5!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
          Spacer(),
          Image.asset("assets/images/logo.png")
        ],
      ),
    );
  }
}
