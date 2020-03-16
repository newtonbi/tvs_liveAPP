import 'package:flutter/material.dart';
import 'package:tvsapp/home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      theme: new ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage('assets/ngao.png'),
            fit: BoxFit.cover,
            color: Colors.black87,
            colorBlendMode: BlendMode.darken,
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Image(
                width: 70.0,
                image: new AssetImage('assets/vlogo.png'),
              ),
              new Form(
                //in the form we have column and in column we have widgets
                child: new Theme(
                  data: new ThemeData(
                    brightness: Brightness.dark,
                    primarySwatch: Colors.teal,
                    inputDecorationTheme: InputDecorationTheme(
                        labelStyle: TextStyle(
                      color: Colors.teal,
                      fontSize: 20.0,
                    )),
                  ),
                  // column to a container to give padding
                  child: Container(
                    padding: const EdgeInsets.all(40.0),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new TextFormField(
                          decoration: InputDecoration(
                            labelText: "Enter email",
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        new TextFormField(
                          decoration: InputDecoration(
                            labelText: "Enter password",
                          ),
                          keyboardType: TextInputType.text,
                          // hide the text using obscuretext
                          obscureText: true,
                        ),
                        new Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                        ),
                        new MaterialButton(
                          color: Colors.teal,
                          textColor: Colors.white,
                          child: Text("Login"),
                          onPressed: () {
                            navigateToMyApp2(context);
                          },
                          splashColor: Colors.redAccent,
                        ),
                      ],
                    ),
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

Future navigateToMyApp2(context) async {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => MyApp2()),
  );
}
