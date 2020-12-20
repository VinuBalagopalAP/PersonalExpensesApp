import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PersonalExpensesApp',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PersonalExpensesApp'),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Card(
                color: Colors.blue,
                child: Container(width: double.infinity, child: Text('CHART!')),
                elevation: 5,
              ),
              Card(
                child: Text('LIST OF TX!'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
