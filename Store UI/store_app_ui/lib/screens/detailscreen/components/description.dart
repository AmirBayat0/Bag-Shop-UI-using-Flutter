import 'package:flutter/material.dart';
import 'package:store_app_ui/constants.dart';
import 'package:store_app_ui/model/products.dart';

class Description extends StatelessWidget {
  final Products product;
  Description({required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 5),
      child: Text(product.description,style: TextStyle(color: textColor,fontSize: 20,fontWeight: FontWeight.w600),),
    );
  }
}