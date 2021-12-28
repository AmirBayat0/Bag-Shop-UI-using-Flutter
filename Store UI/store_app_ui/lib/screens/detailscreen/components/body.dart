// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:store_app_ui/model/products.dart';
import 'package:store_app_ui/screens/detailscreen/components/conter_b.dart';
import 'package:store_app_ui/screens/detailscreen/components/description.dart';
import 'package:store_app_ui/screens/detailscreen/components/prouct_title.dart';
import 'color_and_size.dart';

class Body extends StatelessWidget {
  final Products product;
  Body({required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                      left: 25, right: 10, top: size.height * 0.12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                      color: Colors.white),
                  child: Column(
                    children: [
                      ColorAndSize(
                        product: product,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Description(
                        product: product,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ConterB(
                        product: product,
                      ),
                      SizedBox(height: 40,),
                      Row(
                        children: [
                          SizedBox(
                            width: 80,
                            height: 80,
                            // ignore: deprecated_member_use
                            child: OutlineButton(
                              textColor: product.color,
                              highlightedBorderColor: product.color,
                              borderSide:
                                  BorderSide(color: product.color, width: 3),
                              onPressed: () {},
                              padding: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Icon(
                                Icons.add_shopping_cart,
                                size: 50,
                                color: product.color,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            width: 320,
                            height: 80,
                            decoration: BoxDecoration(color: product.color,
                            borderRadius: BorderRadius.circular(25)),
                            child: MaterialButton(
                              onPressed: () {},
                              child: Text(
                                "BUY NOW",
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                ProuctTitle(product: product)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
