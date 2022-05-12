import 'package:dashboard_advance_ui/data.dart';
import 'package:dashboard_advance_ui/widgets/card_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CardSection extends StatelessWidget {
  const CardSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Text('Card Selected', style: TextStyle(fontWeight: FontWeight.bold),)),
        Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 2,
                itemBuilder: (context, i){
                return Container(
                  decoration: BoxDecoration(
                    color: primaryColor,
                    boxShadow: customShadow,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        left: 10,
                        bottom: -400,

                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white38,
                              shape: BoxShape.circle ,
                              boxShadow: customShadow
                          ),
                        ),
                      ),
                      Positioned.fill(
                        top: -300,
                        left: -100,
                        right: 100,
                        bottom: -200,

                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white38,
                            shape: BoxShape.circle ,
                            boxShadow: customShadow
                          ),
                        ),
                      ),
                      CardDetails()
                    ],
                  ),
                );
                }
            ),
        ),

      ],
    );
  }
}
