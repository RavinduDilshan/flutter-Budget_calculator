import 'package:flutter/material.dart';
import 'package:newapp/models/transaction.dart';
import 'package:newapp/widgets/transactionList.dart';

import 'newTransaction.dart';
class  userTransaction extends StatefulWidget {
  @override
  _userTransactionState createState() => _userTransactionState();
}

class _userTransactionState extends State<userTransaction> {
  
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


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
         newTransaction(_addNewTransaction),   
         transactionList(_userTransactions),

          
      ],
    );
  }
}