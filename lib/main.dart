import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Home Activity"),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            RaisedButton(
              color: Color.alphaBlend(Colors.blue, Colors.black),
              child: Text("Login"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPageActivity()),
                );
              },
            ),
            RaisedButton(
              color: Color.alphaBlend(Colors.blue, Colors.black),
              child: Text("Register"),
            ),
          ],
        ),
      ),
    );
  }
}


class LoginPageActivity extends StatelessWidget{

  void _onclick(){

}


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Home Activity"),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
                width: 300.0,
                child: new TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter Email Address'
                  ),
                )
            ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: new Container(
                width: 300.0,
                child: new TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter Password'
                  ),
                )
            ),
          ),

        Padding(
          padding: const EdgeInsets.all(20),
          child: new RaisedButton(
            onPressed: _onclick,
            child: new Text('Login'),
          ),
        ),
          ],
        ),
      ),
    );
  }

}