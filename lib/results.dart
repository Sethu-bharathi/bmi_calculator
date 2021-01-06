import 'package:bmi_calculator/main.dart';
import 'package:flutter/material.dart';
import 'separate.dart';
import 'brain.dart';
Calculate a=Calculate(w:weight,h:height);

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('BMI calculator'),
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              child: Text('Your result',
                  textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize:43,
                fontStyle:FontStyle.italic
              ),),
            ),
          ),
            Expanded(
              flex: 5,
              child: Cards(x:Color(0xFF1D1E33),
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[

                    Text(
                      a.bmi().toStringAsFixed(1),
                          textAlign: TextAlign.center,
                          style:TextStyle(
                            color: Color(0xFF24D876),
                           fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                    ),

                    Text(
                      a.results(a.bmi())[0],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize:60,
                      ),
                    ),

                    Text(
                      a.results(a.bmi())[1],
                      textAlign: TextAlign.center,
                      style:TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    bottombutton(title: 'Go back',ontap:(){
                      Navigator.pop(context);
                    })
                  ],
                ),

            ),


            ),],
      ),
    );
  }
}
