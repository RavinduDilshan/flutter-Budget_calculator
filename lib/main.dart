import 'package:flutter/material.dart';
import 'transaction.dart';

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

final List<transaction> Transaction =[

  transaction(id: 't1',title: 'new shoes',amount: 69.99,date: DateTime.now()),
  transaction(id: 't2',title: 'new beer',amount: 69.0,date: DateTime.now()),



];


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
           Column(
             children: Transaction.map((tx){
               return Card(
                 child: Text(tx.title),
               );

             }).toList(),



           )


        ],

      )

    );
  }

  




}

