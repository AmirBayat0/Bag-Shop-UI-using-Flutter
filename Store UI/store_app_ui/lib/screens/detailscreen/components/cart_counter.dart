// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';

class CartCounter extends StatefulWidget {
  CartCounter({Key? key}) : super(key: key);

  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 40,
          child: OutlineButton(
            onPressed: () {
              setState(() {
                if(numOfItems>1){
                  numOfItems--;
                }
              });
            },
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Icon(Icons.remove),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            numOfItems.toString().padLeft(2,""),
            style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(
          width: 50,
          height: 40,
          child: OutlineButton(
              onPressed: () {
                setState(() {
                  numOfItems++;
                });
              },
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(Icons.add)),
        ),
      ],
    );
  }
}
