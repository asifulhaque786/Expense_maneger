import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_project/transcation.dart';

import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  List<Transaction> aaa;

  TransactionList(this.aaa);

  Widget build(BuildContext context) {
    //listveiw has a column with scollview but has infinte height so use container with fix size.dont use it alone
    /*SingleChildScrollView(child:Column*/
    return Container(
        height: 400,
        child: ListView(
          /*itemBuilder: (ctx,index){},
      itemCount: aaa.length,*/

          children: (aaa).map((tx) {
            return Card(
                child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                    margin: EdgeInsets.symmetric(vertical: 7, horizontal: 16),
                    //margin between rows
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.purple, width: 3)),
                    padding: EdgeInsets.all(12),

                    //margin takes edgeinsert
                    child: Text(
                      "Rs: ${tx.amount.toStringAsFixed(2)}",
                      //string interpolation is like formating and injecting values $ is a special symbol used to do that.use curly braces after $ .you dnt need to use tostring as it is done by string interpolation
                      style: TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )),
                Column(
                  children: <Widget>[
                    Text(
                      tx.title.toUpperCase(),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      DateFormat('yyyy/MM/dd').format(tx.date),
                      style: TextStyle(
                          color: Colors.black12,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),

                    //text takes string only no double
                  ],
                ),
                IconButton(
                  icon: Icon(
                    Icons.delete,
                    color: Colors.purple,
                  ),
                  onPressed: () {
                    var b = aaa.indexOf(tx);
                    aaa.removeAt(b);
                  },
                  alignment: Alignment.centerRight,
                )
              ],
            ));
          }).toList(),
        ));
  }
}
