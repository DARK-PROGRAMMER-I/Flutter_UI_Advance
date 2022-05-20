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
  {'name':'Groceries' , 'amount': 100},
  {'name':'Online shopping' , 'amount': 200},
  {'name':'Flutter shop' , 'amount': 350},
  {'name':'Django tutorial' , 'amount': 150},
  {'name':'Relexai' , 'amount': 50},
  {'name':'Hola Dc' , 'amount': 80},
];


List pieColors= [
  Colors.indigo[400],
  Colors.grey,
  Colors.orange,
  Colors.amberAccent,
  Colors.black54,
  Colors.purple,

];