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
     
              child:transactions.isEmpty? Column(
                children: <Widget>[
                  Text("No Transactions Added Yet!",
                  style:Theme.of(context).textTheme.title ,),

                  Container(
                    height: 277,
                    child: Image.asset('assets/images/waiting.png',fit:BoxFit.cover,))

                ],

              ) : ListView.builder(
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
                             color: Theme.of(context).primaryColor,

                           ),
                           
                           ),
                           decoration: BoxDecoration(
                             border: Border.all
                             
                             (color:Theme.of(context).primaryColor,
                             
                             width:2,)
                           ),
                         ),
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: <Widget>[
                             Text(transactions[index].title,
                             style: Theme.of(context).textTheme.title,
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