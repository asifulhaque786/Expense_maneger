//api docs me search karo kya hai widget tumhare kaam ka

//MaterialApp helps int switching the pages navigation
//scaffold give the background appbar
//layout me below
/*container helps in wrapping up a widget helps int aligning etc
rows ---- can have different child widgets
column
-
-
-
flexible and expanded how much space this child widget should consume
stack widget one upon another
 card widget is container having default settings 
 listview abstract column that is scollable
 grid veiw combination of coloumn  nd row scollable
 textfield to take input
 gesturdetector
 inkwell event listners*/ ////\
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:new_project/user_transaction.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

//import 'package:fluttertoast/fluttertoast.dart';

//import 'package:new_project/transcation.dart';

//there is built in feature to formate a state so extra package to extract and format it
//pub.dev is a site where there are many packages to can install in dart packages
//indentation are very important in yml file

//$ use backslash to escape it
//gives access to all not private classes.
void main() => runApp(new MaterialApp(home: ExpenseApp()));

class ExpenseApp extends StatefulWidget {
  @override
  _ExpenseAppState createState() => _ExpenseAppState();
}

class _ExpenseAppState extends State<ExpenseApp> {
  // Container totalkarkede(BuildContext ctx){showModalBottomSheet(context:ctx , builder:(_){return GestureDetector(behavior:HitTestBehavior.opaque,child: bottamsheet());});}
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
            //column has an list of widgets
            //text takes a as much it need size
            //while card takes space as much of its child unless it has a parent which specifies the space
            //coloumn has a width of child.default is infinity
            //function on column has space between,space around
            //elevation  is the shadow
            //coloumn has two axis
            //stech is used to fill all space
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
