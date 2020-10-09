import 'package:check_out_pagee/model/products.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  final Products products;

  ProductDetails({this.products});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 12, left: 20),
          child: Image.asset(
            products.productImage,
            height: 100,
            width: 100,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              products.productName,
            ),
            Text(
              products.productDetails,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("\$${products.productPrice}"),
                Row(
                  children: [
                    Text(
                      "\$${products.productOldPrice}",
                      style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          decorationThickness: 2,color: Colors.grey),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(products.productOffer),
                    SizedBox(
                      width: 160,
                    ),
                    Text("Qty: ${products.qty}"),
                  ],
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
