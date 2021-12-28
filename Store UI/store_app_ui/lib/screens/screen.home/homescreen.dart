// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:store_app_ui/constants.dart';
import 'package:store_app_ui/screens/screen.home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  // AppBar Codes
  buildAppBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(70),
      child: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 35,
              color: textColor,
            ),
            onPressed: () {},
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: IconButton(
              icon: Icon(
                Icons.shopping_cart_outlined,
                size: 35,
                color: textColor,
              ),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 10),
            child: IconButton(
              icon: Icon(
                Icons.search,
                size: 35,
                color: textColor,
              ),
              onPressed: () {},
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
    );
  }
}
