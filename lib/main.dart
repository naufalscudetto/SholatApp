// ignore_for_file: prefer_const_constructors

import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Prayer Times',
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List <String> dummy=[
    "Fajr",
    "Shubuh",
    "Dzuhur",
    "Ashar",
    "Maghrib",
    "Isha",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
          child: Container(
        child: Column(children: <Widget>[ 
          SizedBox(height:30), 
          Container(
            width: double.infinity,
            child: Image.asset(
              'assets/img/prayercompass.png',
              height: 300,
              width: 300,)
            ),
            SizedBox(height: 10),
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              child: ListView.builder(
              itemCount: dummy.length,
              itemBuilder: (context, position){
                return Container(
                  padding: EdgeInsets.all(5),
                    child: Row( 
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                        width: 120,
                        child: Text(dummy[position],
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Montserrat',
                          
                        ))),
                        SizedBox(width:10),
                        Container(
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Colors.teal[50],
                          ),
                          child: Text(dummy[position],
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold
                          ),)
                        )
                      ],
                     ));
              })
            ),
            SizedBox(height: 10),
            TextButton.icon  (onPressed: (){}, icon: Icon(Icons.location_on,color : Colors.white,), 
            label: Text("Finding Location",
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Montserrat',
              fontSize: 14 ),
            )),
        ]
        ),)),
    );
  }
}