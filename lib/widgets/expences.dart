import 'package:dashboard_advance_ui/data.dart';
import 'package:dashboard_advance_ui/widgets/pie_chart.dart';
import 'package:flutter/material.dart';

class ExpenceSection extends StatelessWidget {
  const ExpenceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Text("Expences", style: TextStyle(fontSize: 17 , fontWeight: FontWeight.w800),)),
        Row(
          children: [
            Expanded(
              flex: 5,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                  child: Column(

                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: expences.map((value) =>  SingleChildScrollView(
                      child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(radius: 5, backgroundColor: pieColors[expences.indexOf(value)],),
                              SizedBox(width: 20,),
                              Text( value['name'] , style: TextStyle(fontSize: 16),)
                            ],
                          ),
                        ),
                    ),


                    ).toList(),
                  ),
                )
            ),
            Expanded(flex: 5,child: PieChart()),
          ],
        ),
      ],
    );
  }
}
