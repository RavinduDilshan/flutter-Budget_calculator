import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class  transactionList extends StatelessWidget {
  final List<transaction> transactions;
  transactionList(this.transactions);
 


  @override
  Widget build(BuildContext context) {
    return  Container(
        height: 300,
     
              child: ListView.builder(
                itemBuilder:(ctx,index){
                  return Card(
                     child: Row(
                       children: <Widget>[
                         Container(
                           padding: EdgeInsets.all(10.0),
                           margin: EdgeInsets.symmetric(
                             vertical:10,
                             horizontal:15
                           ),
                           child: Text('\$${transactions[index].amount.toStringAsFixed(2)}',
                           style: TextStyle(
                             fontWeight:FontWeight.bold,
                             fontSize: 20.0,
                             color: Colors.purple,

                           ),
                           
                           ),
                           decoration: BoxDecoration(
                             border: Border.all(color:Colors.purple,width:2,)
                           ),
                         ),
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: <Widget>[
                             Text(transactions[index].title,
                             style: TextStyle(
                               fontSize: 16,
                               fontWeight:FontWeight.bold,
                             ),
                             ),
                             Text(DateFormat.yMMMd().format(transactions[index].date),
                             style: TextStyle(
                               color: Colors.grey,
                             ),
                             )
                           ],

                         )
                       ],
                      

                     ),
                     
                     
                     
                   );

                },
                 itemCount: transactions.length,
               ),
      
    );
  }
}