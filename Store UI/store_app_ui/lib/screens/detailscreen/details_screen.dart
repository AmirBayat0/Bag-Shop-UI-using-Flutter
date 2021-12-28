// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:store_app_ui/model/products.dart';
import 'package:store_app_ui/screens/detailscreen/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Products product;
  DetailsScreen({required this.product});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(onTap: () {
        Navigator.pop(context);
      }),
      body: Body(product: product),
    );
  }

  buildAppBar({required onTap}) {
    return PreferredSize(
      preferredSize: Size.fromHeight(70),
      child: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 35,
              color: Colors.white,
            ),
            onPressed: onTap,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: IconButton(
              icon: Icon(
                Icons.shopping_cart_outlined,
                size: 35,
                color: Colors.white,
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
                color: Colors.white,
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
