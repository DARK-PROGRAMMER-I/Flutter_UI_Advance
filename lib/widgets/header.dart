import 'package:dashboard_advance_ui/data.dart';
import 'package:flutter/material.dart';

class WalletHeader extends StatelessWidget {
  const WalletHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Malik \'s Wallet'  , style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold), ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(boxShadow: customShadow, color: primaryColor, shape: BoxShape.circle),
            child: Stack(
              children: [
                Center(
                  child: Container(
                    // margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(boxShadow: customShadow, color: Colors.deepOrangeAccent, shape: BoxShape.circle),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(boxShadow: customShadow, color: primaryColor, shape: BoxShape.circle),
                  ),
                ),
                Center(
                  child: IconButton(
                    onPressed: (){},
                      icon: Icon(Icons.notifications)),
                ),
              ],
            )
          ),
        ],
      ),
    );
  }
}
