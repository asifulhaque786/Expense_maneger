import 'package:flutter/material.dart';
import 'package:new_project/new_transaction.dart';
import 'package:new_project/transaction_list.dart';
import 'package:new_project/transcation.dart';

double sum = 0;
List<Transaction> abc = [
  /*Transaction(id: "wd",title:"sdd",amount: 344,date: DateTime.now() )*/
];

void function() {
  for (var i = 0; i < abc.length; i++) {
    sum += abc[i].amount;
  }
  ;
}

void reset() {
  sum = 0;
}

class UserTransaction extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return UserTransactionState();
  }
}

class UserTransactionState extends State<UserTransaction> {
  void addnewtransaction(String titlex, double amountx) {
    final newTx = Transaction(
        title: titlex,
        amount: amountx,
        date: DateTime.now(),
        id: DateTime.now().toString());

    setState(() {
      abc.add(newTx);
    });
  }

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(addnewtransaction),
        TransactionList(abc)
      ],
    );
  }
}
