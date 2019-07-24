import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget implements PreferredSizeWidget {
  final String foo;
  const SearchBar({Key key, this.foo}) : super(key: key);
  @override
  _SearchBarState createState() => _SearchBarState(); //foo: this.foo

  @override
  Size get preferredSize {
    return new Size.fromHeight(50.0);
  }
}

class _SearchBarState extends State<SearchBar> {
  Widget appBarTitle;
  Icon actionIcon = new Icon(Icons.search);
  // _SearchBarState({this.foo}) {
  //   print('foo:$foo');
  // }
  // String foo;
  @override
  void initState() {
    setState(() {
      appBarTitle = new Text(widget.foo);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: appBarTitle,
        actions: <Widget>[
          new IconButton(
            icon: actionIcon,
            onPressed: () {
              setState(() {
                if (this.actionIcon.icon == Icons.search) {
                  this.actionIcon = new Icon(Icons.close);
                  this.appBarTitle = new TextField(
                    style: new TextStyle(
                      color: Colors.white,
                    ),
                    decoration: new InputDecoration(
                      prefixIcon: new Icon(Icons.search, color: Colors.white),
                      hintText: "Search...",
                      hintStyle: new TextStyle(color: Colors.white),
                    ),
                  );
                } else {
                  this.actionIcon = new Icon(Icons.search);
                  this.appBarTitle = new Text(widget.foo);
                }
              });
            },
          ),
        ],
      ),
    );
  }
}
