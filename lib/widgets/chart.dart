import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/models/transaction.dart';
import 'package:intl/intl.dart';

class Chart extends StatelessWidget {
  final List<Transaction> recentTansaction;

  Chart(this.recentTansaction);

  List<Map<String, Object>> get groopedTransactionValues {
    return List.generate(7, (index) {
      final weekDay = DateTime.now().subtract(
        Duration(days: index),
      );
      double totalSum;

      for (var i = 0; i < recentTansaction.length; i++) {
        if (recentTansaction[i].date.day == weekDay.day &&
            recentTansaction[i].date.month == weekDay.month &&
            recentTansaction[i].date.year == weekDay.year) {
          totalSum += recentTansaction[i].amount;
        }
      }

      print(DateFormat.E(weekDay));
      print(totalSum);
      return {
        'day': DateFormat.E(weekDay),
        'amount': totalSum,
      };
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(20),
      child: Row(
        children: <Widget>[],
      ),
    );
  }
}
