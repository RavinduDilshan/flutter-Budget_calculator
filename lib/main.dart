import 'package:flutter/material.dart';
import 'package:newapp/widgets/newTransaction.dart';
import 'package:newapp/widgets/userTransaction.dart';
import './widgets/transactionList.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: myHomePage(),
     
      
    );
  }
}

class myHomePage extends StatelessWidget{

// String titleInput;
// String amountInput;
final titleController= TextEditingController();
final amountController=TextEditingController();


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Transaction Cal"),
      ),
      body: SingleChildScrollView(
              child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
             
              width: double.infinity,
              child: Card(
                color: Colors.blue,
                elevation: 5.0,
                  child: Text("chart"),
              ),
            ),

            userTransaction(),

           


          ],

        ),
      )

    );
  }

  




}

