import 'package:dashboard_advance_ui/data.dart';
import 'package:flutter/material.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                width: 220,
                child: Image.asset('assets/mastercardlogo.png'))
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: EdgeInsets.all(30),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    boxShadow: customShadow,
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(10)
                  ),
            )
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(
                children: [
                  Text('**** **** *****'),
                  SizedBox(width: 5,),
                  Text("3745", style: TextStyle(fontSize: 22),)
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: Text('PLATINUM CARD', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
            ),
          )
        ],
    );
  }
}
