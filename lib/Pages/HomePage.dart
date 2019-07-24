import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webshop/Widget/SearchBar.dart';

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
      appBar: SearchBar(foo: 'Home'),
      body: Text('Home'),
    );
  }
}
