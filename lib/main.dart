import 'package:flutter/material.dart';
import 'transaction.dart';
import 'package:intl/intl.dart';

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
      body: Column(
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

            Card(
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Title'
                        
                      ),
                      controller: titleController,
                      // onChanged: (value){
                      //   //titleInput=value;
                    
                      // },
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Amount'
                      ),
                      controller: amountController,
                      // onChanged: (value){
                      //   amountInput=value;
                      // },
                    ),
                    FlatButton(child: Text(
                      'Add Transaction',
                      
                    ),
                    
                    onPressed: (){
                      print(titleController.text);
                      print(amountController.text);
                      
                    },
                    textColor: Colors.purple,
                    ),
                  ],
                ),
              ),
            ),

           Column(
             children: Transaction.map((tx){
               return Card(
                 child: Row(
                   children: <Widget>[
                     Container(
                       padding: EdgeInsets.all(10.0),
                       margin: EdgeInsets.symmetric(
                         vertical:10,
                         horizontal:15
                       ),
                       child: Text('\$${tx.amount}',
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
                         Text(tx.title,
                         style: TextStyle(
                           fontSize: 16,
                           fontWeight:FontWeight.bold,
                         ),
                         ),
                         Text(DateFormat.yMMMd().format(tx.date),
                         style: TextStyle(
                           color: Colors.grey,
                         ),
                         )
                       ],

                     )
                   ],
                  

                 ),
                 
                 
                 
               );

             }).toList(),



           )


        ],

      )

    );
  }

  




}

