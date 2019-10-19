import 'dart:convert';

import 'package:flutter/material.dart';

void main() => runApp(Home());




class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      backgroundColor: Color.fromRGBO(49, 49, 49, 1),
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text(
            'Starket',
          style: TextStyle(
            fontFamily: 'Rounded',
            fontSize: 28,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Image.asset(
              'assets/starketinapplogo.png',
              height: 200,
              width: 200,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                onPressed: (){
                  runApp(Store());
                },
                padding: EdgeInsets.symmetric(horizontal: 178),
                color: Colors.red,
                child: Text(
                  'Store',
                  style: TextStyle(
                    fontFamily: 'Rounded',
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ],

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                onPressed: (){
                  runApp(CostCalculator());
                },
                padding: EdgeInsets.symmetric(horizontal: 140),
                color: Colors.red,
                child: Text(
                  'Cost Calculator',
                  style: TextStyle(
                    fontFamily: 'Rounded',
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[
              FlatButton(
                padding: EdgeInsets.symmetric(horizontal: 170),
                onPressed:(){
                  runApp(Tourism());
                },
                color: Colors.red,
                child: Text(
                  'Tourism',

                  style: TextStyle(
                    fontFamily: 'Rounded',
                    fontSize: 15,
                    color: Colors.white,


                  ),
                ),
              ),
            ],
          ),

        ],
    ),
  ),
    );

  }
}

class Store extends StatefulWidget {
  @override
  _StoreState createState() => _StoreState();
}

class _StoreState extends State<Store> {
  //@override
  var planets=['Pluto','Eris', 'Hameau','Makemake' ];
  var currentItemSelected='Pluto';
  Widget build(BuildContext context) {
    return (MaterialApp(
      theme: ThemeData(
        canvasColor: Color.fromRGBO(84, 50, 110, 1),
      ),
      home: Scaffold(
        backgroundColor: Color.fromRGBO(49, 49, 49, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(84, 50, 110, 1)
        ),
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            IconButton(
              onPressed:(){
                runApp(Home());
              },
              icon: Image.asset('assets/circled-left.png'),
              iconSize: 75,
            ),
            DropdownButton<String>(

              items: planets.map((String dropDownStringItem){

                return DropdownMenuItem<String>(


                  value: dropDownStringItem,


                  child: Text(

                      dropDownStringItem,
                      style:TextStyle(
                        color: Colors.white,

                      ),
                  ),

                );
              }).toList(),
              onChanged: (String newValueSelected){
                setState(() {
                  this.currentItemSelected= newValueSelected;
                });
              },
              value: currentItemSelected,
            ),
          ],
        ),
      ),
    ));
  }
}

class Tourism extends StatefulWidget {
  @override
  _TourismState createState() => _TourismState();
}

class _TourismState extends State<Tourism> {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(49, 49, 49, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(84, 50, 110, 1),
        ),
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            IconButton(
              onPressed:(){
                runApp(Home());
              },
              icon: Image.asset('assets/circled-left.png'),
              iconSize: 75,
            ),
          ],
        ),
      ),
    ));
  }
}

class CostCalculator extends StatefulWidget {
  @override
  _CostCalculatorState createState() => _CostCalculatorState();
}

class _CostCalculatorState extends State<CostCalculator> {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(49, 49, 49, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(84, 50, 110, 1)
        ),
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            IconButton(
              onPressed:(){
                runApp(Home());
              },
              icon: Image.asset('assets/circled-left.png'),
              iconSize: 75,
            ),
          ],
        ),

      ),
    ));
  }
}







