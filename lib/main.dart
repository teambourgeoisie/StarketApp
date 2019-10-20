import 'dart:convert';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

double semitotal=0.0;
void main() => runApp(Home());

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

String selectedStringFromStore = "Pluto";

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
  int rock=0;
  int nitrogen=0;
  int ethane=0;
  int water=0;

  var planets=['Pluto','Eris', 'Haumea','Makemake' ];
  var currentItemSelected='Pluto';
  String pic='assets/Pluto.png';
  Widget build(BuildContext context) {
    return (MaterialApp(
      theme: ThemeData(
        canvasColor: Color.fromRGBO(84, 50, 110, 1),
      ),
      home: Scaffold(
        backgroundColor: Color.fromRGBO(49, 49, 49, 1),
        appBar: AppBar(
            title: Text(
              'Store',
              style: TextStyle(
                fontFamily: 'Rounded',
                fontSize: 28,
              ),
            ),
            centerTitle: true,
          backgroundColor: Color.fromRGBO(84, 50, 110, 1)
        ),
        body: Column(
          children: <Widget>[
            Row(
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
                      selectedStringFromStore = this.currentItemSelected;
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
                      else if(options==3){
                        pic='assets/Makemake.png';
                      }
                      else{
                        pic='assets/Pluto.png';
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  iconSize: 80,
                  onPressed: (){
                    setState(() {
                      rock ++;
                    });
                    print(rock);
                  },
                  icon: Image.asset(
                    'assets/SpaceRocks.png',
                  ),
                ),

                Text(

                  'x$rock',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),

                )

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  iconSize: 80,
                  onPressed: (){
                    setState(() {
                      nitrogen ++;
                    });
                    print(nitrogen);
                  },
                  icon: Image.asset('assets/NitrogenGas.png'),
                ),
                Text(
                  'x$nitrogen',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                )




              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  iconSize: 80,
                  onPressed: (){
                    setState(() {
                      ethane ++;
                    });
                    print(ethane);
                  },
                  icon: Image.asset('assets/Ethane.png'),
                ),
                Text(
                  'x$ethane',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                )




              ]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  iconSize: 80,
                  onPressed: (){
                    setState(() {
                      water ++;
                    });
                    print(water);
                  },
                  icon: Image.asset('assets/FreshWater.png'),
                ),
                Text(
                  'x$water',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                )




              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: (){

                    setState(() {
                      rock=0;
                      nitrogen=0;
                      ethane=0;
                      water=0;
                    });


                  },
                  child: Text('Clear'),
                ),
                RaisedButton(
                  onPressed: (){
                    semitotal=rock*250+nitrogen*15+ethane*0.60+water*0.30;
                    //runApp(CostCalculator());
                    print ('Semitotal is' + semitotal.toString());
                  },
                  child: Text('Checkout'),
                )
              ],
            ),

          ],
        )


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
          title: Text(
            'Tourism',
            style: TextStyle(
              fontFamily: 'Rounded',
              fontSize: 28,
            ),
          ),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(84, 50, 110, 1),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            IconButton(
              onPressed:(){
                runApp(Home());
              },
              icon: Image.asset('assets/circled-left.png'),
              iconSize: 75,
            ),
            IconButton(

              onPressed: (){},
              icon: Image.asset('assets/TourismEris.png'),

              iconSize: 200,

            ),
            IconButton(
              onPressed: (){},
              icon:Image.asset('assets/TourismMakemake.png'),
              iconSize: 200,

            )
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
  int year = 2019;
  Planet planet = new Planet(selectedStringFromStore);
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(49, 49, 49, 1),
        appBar: AppBar(
            title: Text(
              'Cost Calculator',
              style: TextStyle(
                fontFamily: 'Rounded',
                fontSize: 28,
              ),
            ),
            centerTitle: true,
            backgroundColor: Color.fromRGBO(84, 50, 110, 1)
        ),
        body: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  onPressed:(){
                    runApp(Home());
                  },
                  icon: Image.asset('assets/circled-left.png'),
                  iconSize: 75,
                ),
                Flexible(
                  child: TextField(
                      style: TextStyle(
                        fontFamily: 'Rounded',
                        fontSize: 18,
                        decorationColor: Colors.white,
                      ),
                      keyboardType: TextInputType.numberWithOptions(),
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          labelText: "Enter Year of Arrival to Neptune",
                          labelStyle:TextStyle(color: Colors.white),

                      ),
                      onSubmitted:(userEnteredYear) {
                        setState(() {
                          if(userEnteredYear == null){
                            print("Please Enter a Year.");
                          }else{
                            year = int.parse(userEnteredYear);
                          }
                        });
                      }
                  ),
                ),

              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(

                    "Cost of selected product(s): " + semitotal.toStringAsFixed(2) + " USD",
                  style: TextStyle(

                    fontSize: 15,
                    color: Colors.white,
                    fontFamily: 'Rounded',

                  ),
                ),
                Text(
                  "Cost of shipping to Neptune: " + Planet.calculateCostBeforeShippingToEarth(planet,year).toStringAsFixed(2) + " USD",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontFamily: 'Rounded',
                  ),
                ),
                Text(
                  "Cost of shipping from Neptune to Earth: 224400 USD",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontFamily: 'Rounded',

                  ),
                ),
                Text(
                  "Total Cost = " + Planet.totalCost(planet, year).toStringAsFixed(2) + " USD",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.yellowAccent,
                    fontFamily: 'Rounded',

                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(40,50, 0, 0),
                  child: Image(
                    image: AssetImage('assets/Money.png'),
                    height: 300,
                    width: 300,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}

class Planet{
  var distanceFromSun;
  String name;
  var angularVelocity;
  var initialAngle;
  var distancesToTheSun = [43.1, 43.8, 96.4, 39]; // Haumea, Makemake, Eris, Pluto.
  var angularVelocities = [1.272, 1.18, 0.642, 1.446];
  var initialAnglesOfPlanets = [214, 193, 35, 306];

  Planet(String name){
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

  static double calculateDistance(Planet planet, int whatYear){
    int time = whatYear - 2019;
    if(time < 0){
      time *= -1;
    }
    var angleRadians = planet.getNewAngle(time) * (pi/180);
    var neptuneAngleRadians = (0 + 2.195*(time)) * (pi/180);
    var distanceAU = sqrt((pow((30.06*cos(neptuneAngleRadians))-(planet.distanceFromSun*cos(angleRadians)),2)+(pow((30.06*sin(neptuneAngleRadians))-(planet.distanceFromSun*sin(angleRadians)),2))));
    return distanceAU * 1.496e+8; // distance km
  }

/*  static Planet bestPlanetToShipFrom(int whatYear){
    int time = whatYear - 2019;
   // List<Planet>
    if(time < 0){
      time *= -1;
    }
   // int indexOfSmallestDistance = ;
  }*/
  static double calculateCostBeforeShippingToEarth(Planet planetShippingFrom, int whatYear){
    double costBeforeShipping = 0.05 * (Planet.calculateDistance(planetShippingFrom, whatYear)/10000);
    return costBeforeShipping;
  }
  static double calculateCostAfterShippingToEarth(Planet planetShippingFrom, whatYear){
    return calculateCostBeforeShippingToEarth(planetShippingFrom, whatYear)+ 224400;
  }
  static double totalCost(Planet planetShippingFrom, whatYear){
    return 224400 + semitotal + calculateCostBeforeShippingToEarth(planetShippingFrom, whatYear);
  }
}










