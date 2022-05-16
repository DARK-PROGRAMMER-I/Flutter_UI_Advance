import 'package:dashboard_advance_ui/data.dart';
import 'package:flutter/material.dart';

class ExpenceSection extends StatelessWidget {
  const ExpenceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text('Monthly Expences')),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 45,
                  height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: primaryColor,
                        boxShadow: customShadow),
                    child: IconButton(
                      splashColor: primaryColor,
                      focusColor: primaryColor,
                      highlightColor: Colors.blue[100],
                      onPressed: (){},
                      icon: Icon(Icons.arrow_back_ios_rounded, size: 18,),
                    ),
                ),
                SizedBox(width: 10,),
                GestureDetector(
                  onTap: (){},
                  child: Container(

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                        color: primaryColor,
                        boxShadow: customShadow),
                  // margin: EdgeInsets.,
                  child: IconButton(
                    splashColor: primaryColor,
                    focusColor: primaryColor,
                    highlightColor: Colors.blue[100],
                    icon: Icon(Icons.arrow_forward_ios_rounded,size: 18,),
                    onPressed: (){},
                  ),
              ),
                ),
                SizedBox(width: 30,),
              ],),
          ],
        ),
      ],
    );
  }
}
