import 'package:flutter/material.dart';

import 'Pages/Index.dart';
// import 'Pages/Login.dart';

//flutter build apk --release
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: '/',
      routes: {
        '/': (context) => Index(),
        // '/Index': (context) => Index(),
        // '/second': (context) => SecondScreen(),
      },
    );
  }
}
