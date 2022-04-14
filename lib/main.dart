import 'package:flutter/material.dart';
import 'package:state_management/theme.dart';
import 'package:state_management/widgets/header.dart';

void main() => runApp(const PaymentApp());

class PaymentApp extends StatefulWidget {
  const PaymentApp({Key? key}) : super(key: key);

  @override
  State<PaymentApp> createState() => _PaymentAppState();
}

class _PaymentAppState extends State<PaymentApp> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    Widget options(int index) {
      return GestureDetector(
        onTap: (() {
          setState(() {
            selectedIndex = index;
          });
        }),
        child: Container(
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              border: Border.all(
                  color: selectedIndex == index
                      ? Color(0xFF007DFF)
                      : Color(0xFF4D5B7C)),
              borderRadius: BorderRadius.all(Radius.circular(14))),
        ),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color(0xFF04112F),
          body: SafeArea(
            child: ListView(
              children: [HeaderWidget(), options(0), options(1), options(2)],
            ),
          )),
    );
  }
}
