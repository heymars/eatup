import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodListingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Text(
            "Eatup",
            style: TextStyle(
                color: Colors.blue, fontSize: 20, fontWeight: FontWeight.w700),
          ),
          actions: [
            Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Icon(
                  Icons.shopping_cart,
                  color: Colors.blue,
                ))
          ],
        ),
        body: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, bottom: 8, top: 16),
                  child: TextField(
                      decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade200.withOpacity(0.5),
                    hintText: "Search for something",
                    contentPadding: EdgeInsets.all(8),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(color: Colors.grey.shade200)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.grey.shade200.withOpacity(0.5))),
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                  )),
                ),
              ),
              Expanded(
                child: buildList(),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildList() {
    return GridView.builder(
      itemCount: 10,
      shrinkWrap: false,
      padding: EdgeInsets.all(8),
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 0.7),
      itemBuilder: (BuildContext context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    color:
                        Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                            .withOpacity(0.35),
                    borderRadius: BorderRadius.all(Radius.circular(40))),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Image.network(
                          "http://www.pngmart.com/files/1/Pepperoni-Pizza.png",
                          height: 120,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          "Peporoni",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text("Cheese, tomato, paperika, peproni"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\$26",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                            Text("View more")
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 0,
                child: Container(
                  height: 50,
                  width: 55,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.4),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30)),
                  ),
                  child: Icon(
                    Icons.close,
                    color: Colors.blue,
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
