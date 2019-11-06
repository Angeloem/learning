import 'package:flutter/material.dart';
import 'package:learning/model/car.dart';
import 'package:learning/ui_test/layout.dart';

void main() => runApp(MyApp());

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
    return Scaffold(
	   appBar: AppBar(
		   backgroundColor: Colors.transparent,
		   leading: Container(
			   margin: EdgeInsets.only(left: 25),
			   child: Icon(
				   Icons.arrow_back
			   ),
		   ),
		   actions: <Widget>[
		   	Container(
			    margin: EdgeInsets.only(right: 25),
			    child: Icon(Icons.favorite_border),
		    )
		   ],
	   ),
		backgroundColor: Colors.black,
	    body: LayoutStart(),
    );
  }
}

class LayoutStart extends StatelessWidget{
	@override
	Widget build(BuildContext context) {
    return null;
  }
}