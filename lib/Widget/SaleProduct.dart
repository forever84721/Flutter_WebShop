import 'package:flutter/material.dart';

class SaleProduct extends StatelessWidget {
  final int price;
  const SaleProduct({Key key, this.price}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180.0,
      child:Column(children: <Widget>[Image.network("https://placem.at/things?w=180&h=150&&txtclr=0000&random=$price"),Text('\$$price')],) 
    );
  }
}