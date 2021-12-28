// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:store_app_ui/model/products.dart';

class ColorAndSize extends StatelessWidget {
  final Products product;
  ColorAndSize({required this.product});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Color",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                children: [
                  ColorDot(
                    isSelected: true,
                    color: Color(0xFF3D82AE),
                  ),
                  ColorDot(
                    isSelected: false,
                    color: Color(0xFF989493),
                  ),
                  ColorDot(
                    isSelected: false,
                    color: Color(0xFFE6B398),
                  ),
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Size",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "${product.size} cm",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  bool isSelected = false;
  Color color;
  ColorDot({required this.isSelected, required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5, right: 10),
      padding: EdgeInsets.all(2.5),
      width: 28,
      height: 28,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isSelected ? color : Colors.transparent,
            width: 2
          )),
      child: DecoratedBox(
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}
