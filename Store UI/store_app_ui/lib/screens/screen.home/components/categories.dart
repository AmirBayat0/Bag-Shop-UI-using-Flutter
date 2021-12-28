// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:store_app_ui/constants.dart';

class CateGories extends StatefulWidget {
  const CateGories({Key? key}) : super(key: key);

  @override
  _CateGoriesState createState() => _CateGoriesState();
}

class _CateGoriesState extends State<CateGories> {
  List<String> categories = [
    "HandBag",
    "Jewellery",
    "Footwear",
    "Dresses",
    "BackPack",
    "Duffel",
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 13),
      child: SizedBox(
        height: 50,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Text(
                      categories[index],
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: index == selectedIndex
                              ? textColor
                              : textColorLight),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: index == selectedIndex
                          ? Colors.blue
                          : Colors.transparent,
                      height: 2,
                      width: 70,
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
