import 'package:flutter/material.dart';


class chartBar extends StatelessWidget {

  final String label;
  final double spendingAmount;
  final double spendingPctOfTotal;

  chartBar(this.label,this.spendingAmount,this.spendingPctOfTotal);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('\$${spendingAmount.toStringAsFixed(0)}'),
        SizedBox(height: 4,),
        Container(
          height: 60,
          width: 10,
          child: Stack(
            children: <Widget>[
              Container(decoration: BoxDecoration(border: Border.all(color:Colors.grey,width:1.0),
              
              borderRadius: BorderRadius.circular(10),
              color: Color.fromRGBO(220, 220, 220, 1),
              ),
              
              
              
              ),

              FractionallySizedBox(
                heightFactor: spendingPctOfTotal,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(10),

                  ),
                ),

              ),
              
            ],
          ),

        ),
        SizedBox(height: 4,),
        Text(label),
      ],
    );
  }
}