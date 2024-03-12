// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Scaffold(
          backgroundColor: Color.fromARGB(164, 32, 8, 110),
          appBar: AppBar(
            backgroundColor: Color.fromARGB(192, 55, 21, 205) ,
            title: Center(
              child: Text('Ask Me anything',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.w900,
              ),
              ),
            ),
          ),
          body: MyBody(),
        
        ),
      ),
    );
  }
}
class MyBody extends StatefulWidget {
  const MyBody({super.key});

  @override
  State<MyBody> createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  int answer=1;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: <Widget>[
        
        Expanded(
          child:Center(
            child: GestureDetector(
              onTap: () => {
                setState(() {
                  answer=Random().nextInt(5)+1;
                })
              },
              child: Image.asset('../images/ball$answer.png',
              
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(40),
          child: Center(
            child: Text('I will Make Decisions for you tap the ball for answer',
              
              style: TextStyle(
                fontSize: 24,
                color: Colors.grey,
                 fontWeight:FontWeight.w900, 
                 
              ),
             ),
          ),
        )
      ],
    );
  }
}