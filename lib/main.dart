import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}


class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(49, 49, 49, 1),
      appBar: AppBar(
        title: Text('Starket'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
        Image.asset('assets/starketinapplogo.png'),
        ],
      ),
    );
  }
}




