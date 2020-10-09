import 'package:check_out_pagee/model/products.dart';
import 'package:check_out_pagee/widgets/deliveryOption.dart';
import 'package:check_out_pagee/widgets/productDetails.dart';
import 'package:flutter/material.dart';

class CheckOutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Checkout",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.7,
                      color: Colors.blue,
                    ),
                  ),
                  child: FlatButton.icon(
                    onPressed: () {
                      print("Pressed");
                    },
                    icon: Icon(
                      Icons.add,
                      color: Colors.blue,
                    ),
                    label: Text(
                      "Add Address",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 12,
                  ),
                  Image.asset(
                    "assets/icons/package.png",
                    height: 15,
                    width: 15,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text("package 1 of 1"),
                  SizedBox(
                    width: 120,
                  ),
                  Text("Shipping by mShop bd"),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                indent: 11,
                endIndent: 9,
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Delivery Option",
                  textAlign: TextAlign.start,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: Container(
                  height: 100,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.fromBorderSide(
                      BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  child: ListView.builder(
                    itemCount: products.length,
                    itemBuilder: (BuildContext context, int index) =>
                        DeliveryOption(
                      products: products[index],
                    ),
                  ),
                ),
              ),
              Container(
                height: 120,
                child: ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (BuildContext context, int index) =>
                      ProductDetails(
                    products: products[index],
                  ),
                ),
              ),
              Divider(
                indent: 11,
                endIndent: 9,
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 260),
                child: Text("1 Item(s), total: 190"),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 225, top: 5, bottom: 5),
                child: Text(
                  "Price dropped. Saved 160",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              Divider(
                thickness: 6,
                color: Colors.grey[100],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "SubTotal(1 Items)",
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    Text("190")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Shipping Fee",
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    Text("165"),
                  ],
                ),
              ),
              Row(
                children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 15,
                        left: 10,
                        top: 30,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Enter Voucher Code",
                            contentPadding: EdgeInsets.all(8),
                            isDense: true),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, right: 10),
                    child: FlatButton(
                      color: Colors.grey[200],
                      onPressed: () {},
                      child: Text(
                        "Apply",
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Divider(
                thickness: 40,
                color: Colors.grey[100],
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Total: "),
                            Text(
                              "\$${255}",
                              style: TextStyle(
                                color: Colors.deepOrange[900],fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "VAT included, where applicable",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: FlatButton(
                        color: Colors.deepOrange,
                        onPressed: () {},
                        child: Text(
                          "Proceed to Pay",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
