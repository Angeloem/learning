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
    return Stack(
	    children: <Widget>[
	    	CarDetailsAnimation(),
	    ],
    );
  }
}

class CarDetailsAnimation extends StatefulWidget{
	@override
	_CarDetailsAnimationState createState() => _CarDetailsAnimationState();
}

class _CarDetailsAnimationState extends State<CarDetailsAnimation>{
	@override
	Widget build(BuildContext context) {
    return CarDetails();
  }
}

class CarDetails extends StatelessWidget{
	@override
	Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
	    child: Column(
		    crossAxisAlignment: CrossAxisAlignment.start,
		    children: <Widget>[
		    	Container(
				    padding: EdgeInsets.only(left: 30),
				    child: _carTitle(),
			    ),
			    Container(
				    width: double.infinity,
				    child: CarCarousel(),
			    )
		    ],
	    ),
    );
  }
  
  _carTitle(){
		return Column(
			crossAxisAlignment: CrossAxisAlignment.start,
			children: <Widget>[
				RichText(
					text: TextSpan(
						style: TextStyle(
							color: Colors.white,
							fontSize: 38
						),
						children: [
							TextSpan(text: currentCar.companyName),
							TextSpan(text: '\n'),
							TextSpan(text: currentCar.carName, style: TextStyle(
								fontWeight: FontWeight.w700
							)),
						]
					),
				),
				SizedBox(height: 10,),
				RichText(
					text: TextSpan(
						style: TextStyle(
							fontSize: 16
						),
						children: [
							TextSpan(
								text: currentCar.price.toString(),
								style: TextStyle(
									color: Colors.grey[20]
								),
							),
							TextSpan(
								text: '/ day',
								style: TextStyle(
									color: Colors.grey
								)
							)
						]
					),
				),
			],
		);
  }
}

class CarCarousel extends StatefulWidget {
	@override
	CarCarouselState createState() => CarCarouselState();
}

class CarCarouselState extends State<CarCarousel> {
  @override
  Widget build(BuildContext context) {
    return null;
  }
	
}