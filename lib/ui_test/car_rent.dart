import 'package:flutter/material.dart';
import 'package:learning/model/car.dart';

void main() => runApp(MyApp);

var currentCar = carList.cars[0];


class MyApp extends StatelessWidget{
	@override
	Widget build(BuildContext context) {
    return MaterialApp(
	   debugShowCheckedModeBanner: false,
	    home: MainApp(),
    );
  }
}


class MainApp extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
    return null;
  }
}