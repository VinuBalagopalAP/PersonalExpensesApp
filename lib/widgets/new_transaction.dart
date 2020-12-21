import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: 'Tilte',
              ),
              controller: titleController,

              // onChanged: (val) {
              //   titleInput = val;
              // },
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Amount',
              ),
              controller: amountController,
              // onChanged: (val) => amountInput = val,
            ),
            FlatButton(
              textColor: Colors.purple,
              child: Text(
                'Add Transaction',
              ),
              onPressed: () {
                print(titleController);
                print(amountController);
              },
            )
          ],
        ),
      ),
    );
  }
}
