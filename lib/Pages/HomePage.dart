import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webshop/Widget/GeneralDrawer.dart';
import 'package:flutter_webshop/Widget/SearchBar.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget appBarTitle = new Text("AppBar Title");
  Icon actionIcon = new Icon(Icons.search);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: GeneralDrawer(),
      appBar: SearchBar(title: 'Home'),
      body: Column(
        children: <Widget>[
          CarouselSlider(
            height: 100.0,
            items: [1, 2, 3, 4, 5].map(
              (i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(color: Colors.amber),
                      child: Text(
                        'text $i',
                        style: TextStyle(fontSize: 16.0),
                      ),
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
              children: <Widget>[
                Container(
                  width: 160.0,
                  color: Colors.red,
                ),
                Container(
                  width: 160.0,
                  color: Colors.blue,
                ),
                Container(
                  width: 160.0,
                  color: Colors.green,
                ),
                Container(
                  width: 160.0,
                  color: Colors.yellow,
                ),
                Container(
                  width: 160.0,
                  color: Colors.orange,
                ),
              ],
            ),
            height: 200,
          ),
          Container(
            child: Text('sssss'),
            height: 200,
          ),
        ],
      ),
    );
  }
}
