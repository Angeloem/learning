import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
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
		    CarBottomSheet(),
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
	static final List<String> imgList = currentCar.imgList;
	
	final List<Widget> child = _map<Widget>(imgList, (index, String assetName){
		return Container(
			child: Image.asset("assets/$assetName", fit: BoxFit.fitWidth,)
		);
	}).toList();
	
	static List<T> _map<T>(List list, Function handler) {
		List<T> result = [];
		for (var i = 0; i < list.length; i++) {
			result.add(handler(i, list[i]));
		}
		return result;
	}
	
	int _current = 0;
	
	@override
	Widget build(BuildContext context) {
	return Container(
		child: Column(
			children: <Widget>[
				CarouselSlider(
					height: 250,
					viewportFraction: 1.0,
					items: child,
					onPageChanged: (index){
						setState(() {
							_current = index;
						});
					},
				),
				Container(
					margin: EdgeInsets.only(left: 25),
					child: Row(
						mainAxisAlignment: MainAxisAlignment.start,
						children: _map<Widget>(imgList, (index, assetName){
							return Container(
								width: 50,
								height: 2,
								decoration: BoxDecoration(
									color: _current == index ? Colors.grey[100] : Colors.grey[600]
								),
							);
						})
					),
				)
			],
		),
	);
	}
	
}

class CarBottomSheet extends StatefulWidget{
	_CarBottomSheetState createState() => _CarBottomSheetState();
}

class _CarBottomSheetState extends State<CarBottomSheet> {
	double sheetTop = 400;
	double minSheetTop = 30;
	
	bool isExpanded = false;
	
	@override
	Widget build(BuildContext context) {
    return Positioned(
	    top: sheetTop,
	    left: 0,
	    child: GestureDetector(
		    onTap: (){
		    	setState(() {
					isExpanded ? sheetTop = 400 : sheetTop = minSheetTop;
					isExpanded = !isExpanded;
		    	});
		    },
		    child: SheetContainer(),
	    ),
    );
  }
}

class SheetContainer extends StatefulWidget{
	@override
	_SheetContainerState createState() => _SheetContainerState();
}

class _SheetContainerState extends State<SheetContainer> {
	
	double sheetItemHeight = 110;
	
	
	@override
	Widget build(BuildContext context) {
	// TODO: implement build
	return Container(
		padding: EdgeInsets.only(top: 25),
		height: MediaQuery.of(context).size.height,
		width: MediaQuery.of(context).size.width,
		decoration: BoxDecoration(
			borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
			color: Color(0xfff1f1f1)
		),
		child: Column(
			children: <Widget>[
				drawerHandle(),
				Expanded(
					flex: 1,
					child: ListView(
						children: <Widget>[
							offerDetails(sheetItemHeight),
//							specifications(),
							features(sheetItemHeight),
						],
					),
				)
			],
		),
	);
  }
	drawerHandle() {
		return Container(
			margin: EdgeInsets.only(bottom: 25),
			height: 3,
			width: 65,
			decoration: BoxDecoration(
				borderRadius: BorderRadius.circular(15),
				color: Color(0xffd9dbdb)
			),
		);
	}
	offerDetails(double sheetItemHeight) {
		return Container(
			padding: EdgeInsets.only(top: 15),
			margin: EdgeInsets.only(left: 10, right: 10),
			child: Column(
				crossAxisAlignment: CrossAxisAlignment.start,
				children: <Widget>[
					Text(
						"Offer Details",
						style: TextStyle(
							color: Colors.black,
							fontWeight: FontWeight.w700,
							fontSize: 18
						),
					),
					Container(
						margin: EdgeInsets.only(top: 15),
						height: sheetItemHeight,
						child: ListView.builder(
							itemCount: currentCar.offerDetails.length,
							scrollDirection: Axis.horizontal,
							itemBuilder: (context, index) {
								return ListItem(
									sheetItemHeight: sheetItemHeight,
									mapVal: currentCar.offerDetails[index]
								);
							}
						),
					)
				],
			),
		);
	}
	
	features(double sheetItemHeight) {
		return Container(
			padding: EdgeInsets.only(top: 15),
			margin: EdgeInsets.only(left: 10, right: 10),
			child: Column(
				crossAxisAlignment: CrossAxisAlignment.start,
				children: <Widget>[
					Text(
						"Features",
						style: TextStyle(
							color: Colors.black,
							fontWeight: FontWeight.w700,
							fontSize: 18
						),
					),
					Container(
						margin: EdgeInsets.only(top: 15),
						height: sheetItemHeight,
						child: ListView.builder(
							itemCount: currentCar.features.length,
							scrollDirection: Axis.horizontal,
							itemBuilder: (context, index) {
								return ListItem(
									sheetItemHeight: sheetItemHeight,
									mapVal: currentCar.features[index]
								);
							}
						),
					)
				],
			),
		);
	}
}


class ListItem extends StatelessWidget{
	final double sheetItemHeight;
	final Map mapVal;
	
	ListItem({
		this.sheetItemHeight,
		this.mapVal
});
	
	@override
	Widget build(BuildContext context) {
	return Container(
		margin: EdgeInsets.only(right: 20),
		width: sheetItemHeight,
		height: sheetItemHeight,
		decoration: BoxDecoration(
			borderRadius: BorderRadius.circular(15.0),
			color: Colors.white
		),
		child: Column(
			mainAxisAlignment: MainAxisAlignment.spaceEvenly,
			crossAxisAlignment: CrossAxisAlignment.center,
			children: <Widget>[
				mapVal.keys.elementAt(0),
				Text(
					mapVal.values.elementAt(0),
					style: TextStyle(
						color: Colors.black,
						fontWeight: FontWeight.w600,
						fontSize: 15
					),
				)
			],
		),
	);
	}
}