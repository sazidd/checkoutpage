import 'package:check_out_pagee/model/products.dart';
import 'package:flutter/material.dart';

class DeliveryOption extends StatelessWidget {
  final Products products;

  DeliveryOption({this.products});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5, top: 10),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                  child: Icon(
                    Icons.check,
                    size: 15,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5, top: 10),
                child: Text("\$${products.shippingFee}"),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 26, top: 10,),
            child: Text(
              products.address,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 26, top: 10),
            child: Text(products.detailAddress,),
          ),
        ],
      ),
    );
  }
}
