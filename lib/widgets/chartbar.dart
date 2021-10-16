import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String? label;
  final double? spendingAmount;
  final double? spendingPctOfTotal;

  const ChartBar({
    this.label,
    this.spendingAmount,
    this.spendingPctOfTotal,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 20,
          child: FittedBox(
            child: Text('\$${spendingAmount!.toStringAsFixed(0)}'),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Container(
          height: 60,
          width: 10,
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color.fromRGBO(220, 220, 220, 1),
                ),
              ),
              Flexible(
                child: FractionallySizedBox(
                  heightFactor: spendingAmount! >= 10000
                      ? spendingAmount! / (3000 * 100000000)
                      : spendingAmount! / 10000,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          label!,
        ),
      ],
    );
  }
}
