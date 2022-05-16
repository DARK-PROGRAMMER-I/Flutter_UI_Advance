import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Color primaryColor= Color(0xffcadced);

List<BoxShadow> customShadow =
    [
      BoxShadow(
        color: Colors.white.withOpacity(0.5),
        spreadRadius: -5,
        offset: Offset(-5, -5),
        blurRadius: 30
      ),

      BoxShadow(
        color: Colors.blue[900]!.withOpacity(0.2),
        spreadRadius: 2,
        offset: Offset(7,7),
        blurRadius: 20
      ),
    ];


List expences = [
  {'name':'groceries' , 'amount': 500},
  {'name':'online shopping' , 'amount': 300},
  {'name':'flutter shop' , 'amount': 800},
  {'name':'django tutorial' , 'amount': 100},
  {'name':'relexai' , 'amount': 50},
  {'name':'hola Dc' , 'amount': 20},
];


List pieColors= [
  Colors.indigo[400],
  Colors.grey,
  Colors.orange,
  Colors.amberAccent,
  Colors.black54,
  Colors.purple,

];