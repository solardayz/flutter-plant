import 'package:flutter/material.dart';
import 'package:flutter_plants/screens/details/conponent/body.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';
import 'image_and_icons.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Body(),
    );
  }
}
