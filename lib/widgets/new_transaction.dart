import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              // onChanged: ((val) {
              //   titleInput = val;
              // }),
              controller: titleController,
              decoration: const InputDecoration(
                labelText: 'Title',
              ),
            ),
            TextField(
              // onChanged: ((val) => amountInput = val),
              controller: amountController,
              decoration: const InputDecoration(
                labelText: 'Amount',
              ),
            ),
            TextButton(
              onPressed: () {
                addTx(
                  titleController.text,
                  double.parse(amountController.text),
                );
              },
              style: TextButton.styleFrom(foregroundColor: Colors.purple),
              child: const Text('Add Transaction'),
            )
          ],
        ),
      ),
    );
  }
}
