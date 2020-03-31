import "package:flutter/material.dart";
//import 'package:fluttertoast/fluttertoast.dart';

class NewTransaction extends StatelessWidget {
  /*String TitleInput;
  String amountInput;*/
  final titlecontroller = TextEditingController();
  final amountcontroller = TextEditingController();
  final Function addTx;

  NewTransaction(this.addTx);

  void submit() {
    final tableCell = titlecontroller.text;
    final tablecellamount = double.parse(amountcontroller.text);
    if (tableCell.isEmpty || tablecellamount <= 0) {
      return;
    }
    addTx(tableCell, tablecellamount);

    // or addTx(titlecontroller.text,double.parse(amountcontroller.text));}
  }

  Widget build(BuildContext context) {
    return Card(
        elevation: 50,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              TextField(
                cursorColor: Colors.purple,
                cursorWidth: 3,
                autocorrect: true,
                decoration: InputDecoration(
                    labelText: "Title", hintText: "enter the comodity name"),
                controller: titlecontroller,
              ),
              TextField(
                cursorColor: Colors.purple,
                cursorWidth: 3,
                autocorrect: true,
                decoration: InputDecoration(
                    labelText: "Amount", hintText: "enter the amount in Rs"),
                controller: amountcontroller,
                keyboardType: TextInputType.number,
                onSubmitted: (_) =>
                    submit(), //pass a function not a reference as it is a anomenous function taking in the data
                //onPressed:(){addTx(titlecontroller.text,double.parse(amountcontroller.text)) },
              ),
              RaisedButton(
                color: Colors.purple,
                child: Text(
                  "Add transaction",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  /*Fluttertoast.showToast(msg: "transaction taken");*/
                  submit();
                },
              ) 
            ],
          ),
        ));
  }
}
