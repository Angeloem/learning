import 'package:flutter/material.dart';
import 'package:learning/ui_test/hero.dart';


void main() {
	runApp(new MaterialApp(
		title: 'layout',
		home: Layout(),
	));
}

class Layout extends StatefulWidget {
  @override
	LayoutState createState() => LayoutState();
}

class LayoutState extends State<Layout> {
  String _text = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. '
	  'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.';
	@override
  Widget build(BuildContext context) {
    return new Scaffold(
		appBar: new AppBar(
			leading: Icon(Icons.menu),
			centerTitle: true,
			title: Text("Layouts"),
			actions: <Widget>[
				new Icon(Icons.person_outline)
			],
		),
		body: new ListView(
			children: <Widget>[
				
				new Image.asset(
					'assets/lend.jpg',
				),
				new RaisedButton(onPressed: (){
					Navigator.push(context, MaterialPageRoute(
						maintainState: true,
						builder: (context) => Login())
					);
				}),
				new Row(
					children: <Widget>[
						Expanded(
							child: new Column(
								children: <Widget>[
									new Text(
										"Oeschien Lake Campground",
										style: TextStyle(
											fontWeight: FontWeight.bold,
										),
									),
									new Text(
										"Lorem ipsum dolor sit amet",
										style: TextStyle(
											color: Colors.grey
										),
									)
								],
							),
						),
						new Icon(Icons.star_border),
						new Text("41")
					],
				),
				new Row(
					children: <Widget>[
						new Column(
							children: <Widget>[
								new Icon(
									Icons.call,
									size: 48,
									color: Colors.blue,
								),
								new Text(
									'CALL',
									style: TextStyle(
										color: Colors.blue,
										fontSize: 20
									),
								)
							],
						),
						new Column(
							children: <Widget>[
								new Icon(
									Icons.navigation,
									size: 48,
									color: Colors.blue,
								),
								new Text(
									'ROUTE',
									style: TextStyle(
										color: Colors.blue,
										fontSize: 20
									),
								)
							],
						),
						new Column(
							children: <Widget>[
								new Icon(
									Icons.share,
									size: 48,
									color: Colors.blue,
								),
								new Text(
									'SHARE',
									style: TextStyle(
										color: Colors.blue,
										fontSize: 20
									),
								)
							],
						),
					],
				),
				new Row(
					children: <Widget>[
						Expanded(
							flex: 10,
							child: Text(
								_text,
								style: TextStyle(
									fontSize: 24
								),
							),
						)
					],
				)
			],
		),
	);
  }
}