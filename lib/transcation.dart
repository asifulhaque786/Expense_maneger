import "package:flutter/material.dart";

//specifically @required is from flutter foundation package
class Transaction {
  //final as runtime created but not changed after that
  final String id;
  final String title;
  final double amount;
  final DateTime date;

  Transaction(
      {@required this.id,
      @required this.title,
      @required this.amount,
      @required this.date});
//named argument doesnt have order
//all the field is required//import this from flutter

}
