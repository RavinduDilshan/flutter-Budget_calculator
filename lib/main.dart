import 'package:flutter/material.dart';
import 'package:newapp/widgets/newTransaction.dart';
import 'widgets/transactionList.dart';
import './widgets/transactionList.dart';
import 'models/transaction.dart';



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

class myHomePage extends StatefulWidget{

// String titleInput;
// String amountInput;
  @override
  _myHomePageState createState() => _myHomePageState();
}

class _myHomePageState extends State<myHomePage> {



 final List<transaction> _userTransactions =[

    transaction(id: 't1',title: 'new shoes',amount: 69.99,date: DateTime.now()),
    transaction(id: 't2',title: 'new beer',amount: 69.0,date: DateTime.now()),

  ];

    void _addNewTransaction(String txTitle,double txAmount){
      final newTx = transaction(id:DateTime.now().toString(),title: txTitle, amount: txAmount,date: DateTime.now());
      
      setState(() {
        _userTransactions.add(newTx);
      });

    }


void _startAddNewTransaction(BuildContext ctx){
  showModalBottomSheet(context: ctx, builder: (_){
    return GestureDetector(
      onTap: (){},
      child:newTransaction(_addNewTransaction),
      behavior: HitTestBehavior.opaque,
      ) ;
      




  },);
}

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Transaction Cal"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add,),
            onPressed:()=>_startAddNewTransaction(context) ,
          ),
        ],
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

           transactionList(_userTransactions),

           


          ],

        ),
      ),
      floatingActionButtonLocation:FloatingActionButtonLocation.centerFloat ,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
         onPressed:()=>_startAddNewTransaction(context) ,

      ),

    );
  }
}

