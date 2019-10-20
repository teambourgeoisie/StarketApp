import 'dart:convert';
import 'dart:math';

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

class Tourism extends StatefulWidget {
  @override
  _TourismState createState() => _TourismState();
}

class _StoreState extends State<Store> {
  //@override
  var planets=['Pluto','Eris', 'Haumea','Makemake' ];
  var currentItemSelected='Pluto';
  String pic='assets/blank.PNG';
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
          crossAxisAlignment: CrossAxisAlignment.center,
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
                        color: Colors.white

                      ),
                  ),

                );
              }).toList(),
              onChanged: (String newValueSelected){
                setState(() {
                  this.currentItemSelected= newValueSelected;
                  int options;
                  for(int i=0; i<4; i++){
                    if(planets[i]==newValueSelected){
                      options=i;
                    }
                  }
                  if(options==0){
                    pic='assets/Pluto.png';
                  }
                  else if(options==1){
                    pic='assets/Eris.png';
                  }
                  else if(options==2){
                    pic='assets/Haumea.png';
                  }
                  else{
                    pic='assets/Makemake.png';
                  }
                  print(options);
                });
              },
              value: currentItemSelected,

            ),
            Container(
              padding: EdgeInsets.fromLTRB(60, 20, 0, 20),
              child: Image.asset(
                  pic,
                  height: 100,
                  width: 100,
              ),

            )
          ],
        ),
      ),
    ));
  }
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


class Planets{
  var distanceFromSun;
  String name;
  var angularVelocity;
  var initialAngle;
  var distancesToTheSun = [43.1, 43.8, 96.4, 39]; // Haumea, Makemake, Eris, Pluto.
  var angularVelocities = [1.272, 1.18, 0.642, 1.446];
  var initialAnglesOfPlanets = [214, 193, 35, 306];

  Planets(String name){
    this.name = name;
    this.initialAngle = initialAngle;
    if(name == "Haumea"){
      this.distanceFromSun = distancesToTheSun.elementAt(0);
      this.angularVelocity = angularVelocities.elementAt(0);
      this.initialAngle = initialAnglesOfPlanets.elementAt(0);
    }else if(name == "Makemake"){
      this.distanceFromSun = distancesToTheSun.elementAt(1);
      this.angularVelocity = angularVelocities.elementAt(1);
      this.initialAngle = initialAnglesOfPlanets.elementAt(1);
    }else if(name == "Eris"){
      this.distanceFromSun = distancesToTheSun.elementAt(2);
      this.angularVelocity = angularVelocities.elementAt(2);
      this.initialAngle = initialAnglesOfPlanets.elementAt(2);
    }else if(name == "Pluto"){
      this.distanceFromSun = distancesToTheSun.elementAt(3);
      this.angularVelocity = angularVelocities.elementAt(3);
      this.initialAngle = initialAnglesOfPlanets.elementAt(3);
    }else{
      print("Argument is invalid.");
    }

  }

  double getNewAngle(int whatYear){
    int time = whatYear - 2019;
    if(time < 0){
      time *= -1;
    }
    return initialAngle + (angularVelocity*time);
  }

  static double calculateDistance(Planets planet, int whatYear){
    int time = whatYear - 2019;
    if(time < 0){
      time *= -1;
    }
    var angleRadians = planet.getNewAngle(time) * (pi/180);
    var neptuneAngleRadians = (0 + 2.195*(time)) * (pi/180);
    var distanceAU = sqrt((pow((30.06*cos(neptuneAngleRadians))-(planet.distanceFromSun*cos(angleRadians)),2)+(pow((30.06*sin(neptuneAngleRadians))-(planet.distanceFromSun*sin(angleRadians)),2))));
    return distanceAU * 1.496e+8; // distance km
  }
}

class Items{
  var price = 0;
  Planets planetShippingFrom;

  double calculateCost(){
    var totalCost;
    return totalCost;
  }
}







