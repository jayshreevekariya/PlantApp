import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:plantapp/constant.dart';
import 'package:plantapp/screens/details/components/image_and_icons.dart';
import 'package:plantapp/screens/details/components/title_and_price.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(size: size),
          TitleAndPrice(title: "Angelica", country: "Russia", price: 440),
          SizedBox(height: kDefaultPadding),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: TextButton(
                  onPressed: () {},
                  child: Text("Buy Now"),
                  style: TextButton.styleFrom(
                      primary: Colors.white,
                      textStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      backgroundColor: kPrimaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0))),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: Text("Description"),
                  style: TextButton.styleFrom(
                    primary: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding * 0.2),
        ],
      ),
    );
  }
}
