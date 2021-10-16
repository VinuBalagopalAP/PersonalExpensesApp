import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/core/themes.dart';
import 'package:flutter_complete_guide/screens/homepage.dart';

void main() => runApp(PersonalExpensesApp());

class PersonalExpensesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal Expenses',
      theme: themes(),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
