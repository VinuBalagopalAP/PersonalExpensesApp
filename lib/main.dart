import 'package:PersonalExpensesApp/transaction.dart';
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
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Weekly Groceries',
      amount: 16.53,
      date: DateTime.now(),
    )
  ];

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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Card(
                color: Colors.blue,
                child: Container(width: double.infinity, child: Text('CHART!')),
                elevation: 5,
              ),
              Card(
                color: Colors.red,
                child: Container(child: Text('LIST OF TX!')),
              ),
              Column(
                children: transactions.map((tx) {
                  return Card(
                    child: Row(
                      children: <Widget>[
                        Container(
                            child: Text(
                          tx.amount.toString(),
                        )),
                        Column(
                          children: <Widget>[
                            Text(
                              tx.date.toString(),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                }).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
