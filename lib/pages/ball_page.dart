import 'package:flutter/material.dart';
import 'dart:math';

  class BallPage extends StatefulWidget {
    const BallPage({super.key});

    @override
    State<BallPage> createState() => _BallPageState();
  }

  class _BallPageState extends State<BallPage> {
     int ballNumber = 0;

      void changepicture (){
        setState(() {
          ballNumber = Random().nextInt(5) + 1 ;
        });
      }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.blue[200],
        appBar: AppBar(
          title: Text('Ask Me Anything', style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.blue[800],
          centerTitle: true,
        ),
         body: Center(
           child: Container(
             child: Image.asset('images/ball$ballNumber.png'),

           ),

         ),
        floatingActionButton: SizedBox(
          height: 80,
          width: 80,
          child: FloatingActionButton(
            backgroundColor: Colors.blue[800],
            child: Icon(Icons.play_arrow, color: Colors.white,),
              onPressed:(){
              changepicture();
              }

          ),
        ) ,
      );
    }
  }
