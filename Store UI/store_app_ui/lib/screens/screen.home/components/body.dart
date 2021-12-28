// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:store_app_ui/constants.dart';
import 'package:store_app_ui/model/products.dart';
import 'package:store_app_ui/screens/detailscreen/details_screen.dart';
import 'package:store_app_ui/screens/screen.home/components/categories.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Women",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          CateGories(),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(20),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.78,
                ),
                itemCount: products.length,
                itemBuilder: (BuildContext context, int index) {
                  Products product = products[index];
                  return GestureDetector(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return DetailsScreen(product: product);
                    })),
                    child: Container(
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              height: 200,
                              width: 200,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: product.color,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image(
                                image: AssetImage(product.image),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: double.infinity,
                                  margin: EdgeInsets.only(top: 10),
                                  child: Text(
                                    " ${products[index].title}",
                                    style: TextStyle(
                                      color: textColorLight,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 25,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    " \$${products[index].price.toString()}",
                                    style: TextStyle(
                                      color: textColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
