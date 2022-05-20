import 'dart:math';

import 'package:dashboard_advance_ui/data.dart';
import 'package:flutter/material.dart';

class PieChart extends StatelessWidget {
  const PieChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 20),
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: customShadow,
        color: primaryColor
      ),
      child: Center(
        child: Stack(

          children: [
            Padding(
              padding: EdgeInsets.all(6),
              child: CustomPaint(
                child: Container(
                  width: 60,
                  height: 60,
                ),
                foregroundPainter: PieChartPainter(),
              ),
            ),
          Container(
            child: Center(child: Text("\$1234")),
          // margin: EdgeInsets.symmetric(horizontal: 20),
          width: 70,
          height: 70,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: customShadow,
              color: primaryColor
          ),)
          ],
        ),
      ),
    );
  }
}


class PieChartPainter extends CustomPainter{
  @override
  void paint(Canvas canvas , Size size){

    Offset center = Offset( size.width / 2, size.height/2 );
    double radius = min(size.width/2, size.height/2);

    var paint =  Paint()
    ..style = PaintingStyle.stroke
    ..strokeWidth = 65;

    double total = 0;
    expences.forEach((element) {
        total += element['amount'];
      }
    );
    double startRadian = -pi/2;

    for(int i = 0; i < expences.length ; i++){
      var currentExpence = expences[i];
      var sweepRadian = (currentExpence['amount'] / total ) *2*pi;
      paint.color = pieColors[i];
      canvas.drawArc(
          Rect.fromCircle(center: center, radius: radius),
          startRadian,
          sweepRadian,
          false,
          paint);

      startRadian += sweepRadian;

    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate){
    return true;
  }
}
