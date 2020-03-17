import 'package:flutter/material.dart';
class newTransaction extends StatefulWidget {

    final Function addTx;


    newTransaction(this.addTx);

  @override
  _newTransactionState createState() => _newTransactionState();
}

class _newTransactionState extends State<newTransaction> {
    final titleController=TextEditingController();

    final amountController=TextEditingController();

    void submitData(){
      final enteredTitle = titleController.text;
      final enteredAmount = double.parse(amountController.text);

      if(enteredTitle.isEmpty || enteredAmount <=0){
        return;

      }

      widget.addTx(enteredTitle,enteredAmount);

      Navigator.of(context).pop();
    }

  @override
  Widget build(BuildContext context) {
    return  Card(
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
                      onSubmitted:(_)=> submitData,
                      // onChanged: (value){
                      //   //titleInput=value;
                    
                      // },
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Amount'
                      ),
                      controller: amountController,
                      keyboardType:TextInputType.number,
                      onSubmitted:(_)=> submitData,
                      // onChanged: (value){
                      //   amountInput=value;
                      // },
                    ),
                    FlatButton(child: Text(
                      'Add Transaction',
                      
                    ),
                    
                    onPressed: submitData,
                    textColor: Colors.purple,
                    ),
                  ],
                ),
              ),
            );
  }
}