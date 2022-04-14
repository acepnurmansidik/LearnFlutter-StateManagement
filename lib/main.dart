import 'package:flutter/material.dart';
import 'package:state_management/theme.dart';

void main() => runApp(const PaymentApp());

class PaymentApp extends StatelessWidget {
  const PaymentApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF04112F),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 50,left: 32,right: 32),
              child: ListView(
                children: [
                  Image.asset('assets/images/img_profile.png',width: 267,height: 200,),
                  Padding(
                    padding: const EdgeInsets.only(top: 50, left: 105, right: 90),
                    child: Row(
                      children: [
                        Text('Upgrade to ',style: titleTextStyle,),
                        Text('Pro',style: titleProTextStyle,),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text('Go unlocl all features and\nbuild your own business bigger', style: subtitleTextStyle,textAlign: TextAlign.center,),
                  ),
                ],
              ),
          ),
        ),
      ),
    );
  }
}