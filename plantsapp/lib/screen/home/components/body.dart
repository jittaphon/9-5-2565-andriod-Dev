import 'package:flutter/material.dart';
import 'package:plantsapp/constant.dart';
import 'package:plantsapp/screen/home/components/header_with_searchbox.dart';
import 'package:plantsapp/screen/home/components/recommend_plant.dart';
import 'package:plantsapp/screen/home/components/title_with_more_bth.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBth(),
          RecommendPlants(),
        ],
      ),
    );
  }
}
