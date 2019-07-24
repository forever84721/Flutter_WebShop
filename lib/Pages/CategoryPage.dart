import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webshop/Widget/SearchBar.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchBar(
        foo: 'Category',
      ),
      body: Text('Category'),
    );
  }
}
