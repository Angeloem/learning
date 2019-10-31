import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:learning/ui_test/layout.dart';

void main() {
	runApp(new MaterialApp(
		title: "Learning",
		home: Form(),
	));
}

class Form extends StatefulWidget {
  @override
  FormState createState() => new FormState();
}


class FormState extends State<Form>{
	@override
	Widget build(BuildContext context) {
    return new Scaffold(
		backgroundColor: Color(0xfff5f5f5),
		body: new Container(
			padding: const EdgeInsets.all(32.0),
				child: new ListView(
					children: <Widget>[
						new Image.asset("assets/logo.png"),
						new SizedBox(height: 80,),
						new Container(
							child: new Column(
								children: <Widget>[
									new Text(
										"login",
										style: TextStyle(
											fontWeight: FontWeight.bold,
											fontSize: 32,
											fontFamily: 'OpenSans'
										),
									),
									new Text(
										'Login with Facebook',
										style: TextStyle(
											fontWeight: FontWeight.w300,
											fontSize: 26.0
										),
									),
									new SizedBox(height: 10.0),
									new Text(
										'Login with Google',
										style: TextStyle(
											fontWeight: FontWeight.w300,
											fontSize: 26.0
										),
									)
								],
							),
						),
						new Row(
							
							children: <Widget>[
								Expanded(
									flex:2,
									child: Divider(
										color: Colors.grey,
										thickness: 2,
									),
								),
								Expanded(
									flex: 4,
									child: Text(
										"or",
										textAlign: TextAlign.center,
										style: TextStyle(fontSize: 16),),
								),
								Expanded(
									flex: 2,
									child: Divider(
										color: Colors.grey,
										thickness: 2,
									),
								)
							],
						),
						new TextField(
							decoration: InputDecoration(
								labelText: "Username",
								errorText: "Please Enter Username"
							),
						),
						new TextField(
							obscureText: true,
							decoration: InputDecoration(
								labelText: "Password",
								errorText: "Enter Password Please"
							),
						),
						new Container(
							padding: const EdgeInsets.all(32.0),
							alignment: Alignment.center,
							child: new SizedBox(
								width: 80.0,
								height: 40.0,
								child: new RaisedButton(
									onPressed: (){Navigator.push(context, MaterialPageRoute(
										builder: (context) => Layout()
									));},
									color: Colors.blue,
									padding: const EdgeInsets.all(2.0),
									child: Text('Login',
										style: TextStyle(
											fontSize: 20,
											fontWeight: FontWeight.w400,
										),
									),
									),
								),
							),
				]
				),
		),
	);
  }
}
 