// import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var httpClient = new HttpClient();
  String account = "", password = "";
  final accountController = TextEditingController();
  final passwordController = TextEditingController();
  void login() async {
    print('account:$account');
    print('password:$password');
    var url = 'https://nexifytw.mynetgear.com/api/Auth/Login';
    // var bodyEncoded = json.encode(new {d:"",f:""});
    http.Response response = await http.post(
      url,
      body: '{"email":"forever84721@yahoo.com.tw","password":"asdf"}',
      headers: {"Content-Type": "application/json"}, //Accept
    );
    print('responseBody:${response.body}');

    // var uri = new Uri.http('nexifytw.mynetgear.com', '/api/Auth/Login',
    //     {'email': 'forever84721@yahoo.com.tw', 'password': '"asdf"'});
    // var request = await httpClient.postUrl(uri);
    // var response = await request.close();
    // var responseBody = await response.transform(utf8.decoder).join();
    // print('responseBody:$responseBody');
  }

  @override
  Widget build(BuildContext context) {
    accountController.addListener(() {
      setState(() {
        account = accountController.text;
      });
    });
    passwordController.addListener(() {
      setState(() {
        password = passwordController.text;
      });
    });

    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Login'),
      // ),
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            // height: 500,double.infinity
            padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 50.0),
            decoration: new BoxDecoration(),
            child: Container(
              decoration: new BoxDecoration(
                color: Colors.yellowAccent,
                border: new Border.all(color: Colors.blueGrey, width: 5),
                borderRadius: BorderRadius.all(
                  Radius.circular(15.0),
                ),
              ),
              child: Center(
                child: Column(children: <Widget>[
                  Text(
                    'Logo',
                    style: TextStyle(
                      fontSize: 60,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: 100,
                        child: Text(
                          'Account',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      new SizedBox(
                        //Flexible
                        width: 100,
                        child: new TextField(
                          style: new TextStyle(
                            fontSize: 20.0,
                            // height: 2.0,
                            color: Colors.black,
                          ),
                          controller: accountController,
                          decoration: const InputDecoration(
                            // helperText: "Enter App ID",
                            fillColor: Colors.red,
                          ),
                          // style: Theme.of(context).textTheme.body1,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: 100,
                        child: Text(
                          'Password',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      new SizedBox(
                        //Flexible
                        width: 100,
                        child: new TextField(
                          controller: passwordController,
                          obscureText: true,
                          style: new TextStyle(
                            fontSize: 20.0,
                            // height: 2.0,
                            color: Colors.black,
                          ),
                          decoration: const InputDecoration(
                            // helperText: "Enter App ID",
                            fillColor: Colors.red,
                          ),
                          // style: Theme.of(context).textTheme.body1,
                        ),
                      ),
                    ],
                  ),
                  // new InkWell(
                  //   onTap: () => print('hello'),
                  //   child: new Container(
                  //     //width: 100.0,
                  //     height: 50.0,
                  //     decoration: new BoxDecoration(
                  //       color: Colors.blueAccent,
                  //       border: new Border.all(color: Colors.white, width: 2.0),
                  //       borderRadius: new BorderRadius.circular(10.0),
                  //     ),
                  //     child: new Center(
                  //       child: new Text(
                  //         'Click Me',
                  //         style: new TextStyle(
                  //             fontSize: 18.0, color: Colors.white),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  RaisedButton(
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                    color: Theme.of(context).colorScheme.background,
                    onPressed: login,
                    textColor: Colors.white,
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ]),
                // child: RaisedButton(
                //   child: Text('aaaaaaaaa'),
                //   onPressed: () {},
                // ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
