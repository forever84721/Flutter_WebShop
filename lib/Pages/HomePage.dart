import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webshop/Widget/GeneralDrawer.dart';
import 'package:flutter_webshop/Widget/SaleProduct.dart';
import 'package:flutter_webshop/Widget/SearchBar.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget appBarTitle = new Text("AppBar Title");
  Icon actionIcon = new Icon(Icons.search);
  var rng = new Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: GeneralDrawer(),
      appBar: SearchBar(title: 'Home'),
      body: Column(
        children: <Widget>[
          CarouselSlider(
            autoPlay: true,
            autoPlayInterval: Duration(milliseconds: 3000),
            viewportFraction: 0.95,
            aspectRatio: MediaQuery.of(context).size.aspectRatio,
            height: 100.0,
            items: [1, 2, 3, 4, 5].map(
              (i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      // decoration: BoxDecoration(color: Colors.amber),
                      child: Image.network(
                          "https://placem.at/places?w=${MediaQuery.of(context).size.width}&h=100&&txtclr=0000&random=$i"),
                    );
                  },
                );
              },
            ).toList(),
          ),
          Container(
            child: ListView(
              // This next line does the trick.
              padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
              scrollDirection: Axis.horizontal,
              children: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].map((i) {
                return SaleProduct(price: rng.nextInt(1000));
              }).toList(),
            ),
            height: 200,
          ),
          Container(
            child: Text('Test'),
            height: 200,
          ),
        ],
      ),
    );
  }
}
