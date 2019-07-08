import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<SharedPreferences> _sprefs = SharedPreferences.getInstance();
  final TextEditingController _controller = TextEditingController();
  List<String> list_one , list_two ;
  //list1 han3mal fehal push bta3 l shared pref 
  //list2 han3mal feha l get 

  @override
  void initState() {
    super.initState();
    list_one= [] ;
    list_two = [] ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("shared pref all app"),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: "type in something"
              ),
            ),
            RaisedButton(
              child:Text("Submit") ,
              onPressed: (){},
              ),
               RaisedButton(
              child:Text("Clear") ,
              onPressed: (){},
              ),
              Flex(
                direction: Axis.vertical,
                children: <Widget>[
                 // list_two == null ? [] :list_two.map((String s))
                ],
              )
          ],
        ),
      ),
    );
  }
}