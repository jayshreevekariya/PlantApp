import 'package:flutter/material.dart';
import 'package:plantapp/constant.dart';
import 'package:plantapp/screens/components/featured_plants.dart';
import 'package:plantapp/screens/components/recommend_plant.dart';
import 'package:plantapp/screens/components/title_with_more_btn.dart';
import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderwithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recomended", press: () {}),
          RecomendPlants(),
          TitleWithMoreBtn(title: "Featured Plants", press: () {}),
          FeaturedPlants(),
          SizedBox(
            height: kDefaultPadding,
          ),
        ],
      ),
    );
  }
}