// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:store_app_ui/model/products.dart';
import 'package:store_app_ui/screens/detailscreen/components/cart_counter.dart';

class ConterB extends StatelessWidget {
  final Products product;
  ConterB({required this.product});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CartCounter(),
        Container(
          width: 52,
          height: 52,
          decoration: BoxDecoration(
            color: product.color,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Icon(
            Icons.thumb_up_outlined,
            size: 40,
          ),
        )
      ],
    );
  }
}
