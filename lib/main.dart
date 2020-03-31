
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:new_project/user_transaction.dart';
import 'package:rflutter_alert/rflutter_alert.dart';


void main() => runApp(new MaterialApp(home: ExpenseApp()));

class ExpenseApp extends StatefulWidget {
  @override
  _ExpenseAppState createState() => _ExpenseAppState();
}

class _ExpenseAppState extends State<ExpenseApp> {
  // Container (BuildContext ctx){showModalBottomSheet(context:ctx , builder:(_){return GestureDetector(behavior:HitTestBehavior.opaque,child: bottamsheet());});}
  var nextpage = false;

  void alerts(BuildContext ctx) {
    Alert(
        context: ctx,
        type: AlertType.none,
        title: "YOUR SPENDINGS ARE",
        desc: "Rs: $sum",
        buttons: [
          DialogButton(
            color: Colors.purple,
            child: Text(
              "back",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () => Navigator.pop(ctx),
            width: 120,
          )
        ]).show();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.purple),
        home: Scaffold(
            appBar: AppBar(
              title: Text("Expense Maneger"),
              backgroundColor: Colors.purple,
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.help),
                  color: Colors.white,
                  onPressed: () {
                    setState(() {
                      //Fluttertoast.showToast(msg: "chill,we got you");
                      if (nextpage == false)
                        nextpage = true;
                      else
                        nextpage = false;
                    });
                  },
                ),
                IconButton(
                  icon: Icon(Icons.refresh),
                  color: Colors.white,
                  onPressed: () {
                    setState(() {
                      /*Fluttertoast.showToast(msg: "refreshed");*/
                    });
                  },
                )
              ],
            ),
            
            body: nextpage == false
                ? SingleChildScrollView(
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    //crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                     /* Card(
                        color: Colors.purple,
                        child: Container(
                            width: double.infinity, child: Text("aa")),
                        elevation: 5,
                      ),*/
                      //card is a container
                      //map will give an iterable so tolist makes list
                      //text takes string
                      UserTransaction(),
                    ],
                  ))
                : Center(
                    child: Text(
                    "DM  @asifhaq1 on INSTAGRAM for QUERY",
                    style: TextStyle(fontStyle: FontStyle.italic, fontSize: 17),
                  )),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
            floatingActionButton: nextpage == false
                ? FloatingActionButton(
                    child: Text("Total"),
                    backgroundColor: Colors.purple,
                    onPressed: () {
                      function();
                      print(sum);
                      setState(() {
                        alerts(context);
                      });
                      /*totalkarkede(context);*/

                      reset();
                    })
                : null));
  }
}
