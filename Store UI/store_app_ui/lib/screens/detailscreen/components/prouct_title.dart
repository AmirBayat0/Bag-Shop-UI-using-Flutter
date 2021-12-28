// ignore_for_file: prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:store_app_ui/model/products.dart';

class ProuctTitle extends StatelessWidget {
  final Products product;
  ProuctTitle({required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Arisoco Hand Bag",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            product.title,
            style: TextStyle(
                color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 30,),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Price",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "\$${product.price.toString()}",
                    style: TextStyle(
                        fontSize: 45,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(width: 50,),
             Container(
               width: 250,
               height: 250,
                child: Image.asset(
                  product.image,
                  fit: BoxFit.fill,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
