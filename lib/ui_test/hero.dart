import 'package:flutter/material.dart';

void main(){
	runApp(new MaterialApp(
		home: Login(),
	));
}

class Login extends StatefulWidget{
  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login>{
	TextEditingController _controller = new TextEditingController();
	void toPrintControl(){
		print(_controller);
	}
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
	  final loginButton = Padding(
		  padding: EdgeInsets.symmetric(vertical: 30.2, horizontal: 40.2),
		  child: Material(
			  borderRadius: BorderRadius.circular(30.0),
			  shadowColor: Colors.lightBlueAccent.shade100,
			  elevation: 5.0,
			  color: Colors.lightBlueAccent,
			  child: MaterialButton(
				  onPressed: (){
				  	toPrintControl();
				  },
				  child: new Text('login'),
				  minWidth: 100,
				  height: 42.0,
			  ),
		  ),
	  );
    return Scaffold(
	    backgroundColor: Colors.grey,
	    resizeToAvoidBottomPadding: true,
	    appBar: new AppBar(
		    actions: <Widget>[
		    	Icon(Icons.person),
		    ],
		    title: Text("login"),
		    centerTitle: true,
	    ),
	    body: ListView(
		    padding: const EdgeInsets.all(32),
		    children: <Widget>[
		    	new Hero(
				    tag: 'hero',
				    child: new Image.asset('assets/logo.png')
			    ),
			    SizedBox(height: 50),
			    new TextFormField(
				    autocorrect: true,
				    autofocus: false,
				    obscureText: false,
				    controller: _controller,
				    decoration: InputDecoration(
					    labelText: 'Username',
					    hintText: 'Username',
					    contentPadding: EdgeInsets.all(10),
					    icon: Icon(Icons.person),
					    border: OutlineInputBorder(
						    borderRadius: BorderRadius.circular(10)
					    )
				    ),
			    ),
			    SizedBox(height: 50),
			    new TextFormField(
				    obscureText: true,
				    decoration: InputDecoration(
					    labelText: 'Password',
					    hintText: 'Password',
					    contentPadding: EdgeInsets.all(10),
					    icon: Icon(Icons.vpn_key),
					    border: OutlineInputBorder(
						    borderRadius: BorderRadius.circular(10)
					    )
				    ),
			    ),
			    SizedBox(height: 50),
			    loginButton
		    ],
	    ),
    );
  }
}