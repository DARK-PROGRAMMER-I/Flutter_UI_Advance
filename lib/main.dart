import 'package:dashboard_advance_ui/data.dart';
import 'package:dashboard_advance_ui/widgets/cardSection.dart';
import 'package:dashboard_advance_ui/widgets/expences.dart';
import 'package:dashboard_advance_ui/widgets/header.dart';
import 'package:flutter/material.dart';
void main(){
  return runApp(MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        fontFamily: 'Circular'
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryColor ,
        body: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                height: 120,
                child: WalletHeader(),
              ),
              Expanded(child: Container(child: CardSection(),)),
              Expanded(child: Container(child: ExpenceSection(),)),
            ],
          ),

      ),
    );
  }
}
