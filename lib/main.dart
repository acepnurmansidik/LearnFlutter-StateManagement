import 'package:flutter/material.dart';
import 'package:state_management/theme.dart';
import 'package:state_management/widgets/header.dart';
import 'package:state_management/widgets/optionsMenu.dart';

void main() => runApp(const PaymentApp());

class PaymentApp extends StatefulWidget {
  const PaymentApp({Key? key}) : super(key: key);

  @override
  State<PaymentApp> createState() => _PaymentAppState();
}

class _PaymentAppState extends State<PaymentApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF04112F),
        body: SafeArea(
          child: ListView(
            children: [
              HeaderWidget(),
              optionsMenu(),
              optionsMenu(),
              optionsMenu()
            ],
          ),
        )
      ),
    );
  }
}
