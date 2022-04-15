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
    Widget checkoutButton() {
      return Column(
        children: [
          Container(
            height: 51.23,
            width: 311,
            child: TextButton(
              onPressed: (){}, 
              child: Text('Checkout Now', style: btnTextStyle,),
              style: TextButton.styleFrom(
                backgroundColor: Color(0xFF007DFF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(71)
                )
              ),
            ),
          )
        ],
      );
    }

    Widget options(int index, int price, String title, String subTitle) {
      return GestureDetector(
        onTap: (() {
          setState(() {
            selectedIndex = index;
          });
        }),
        child: Container(
            margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                border: Border.all(
                    color: selectedIndex == index
                        ? Color(0xFF007DFF)
                        : Color(0xFF4D5B7C)),
                borderRadius: BorderRadius.all(Radius.circular(14))),
            child: Row(
              children: [
                Text(
                  'O',
                  style: selectedIndex == index
                      ? titleProTextStyle
                      : titleTextStyle,
                ),
                SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: planTextStyle,
                    ),
                    Text(
                      subTitle,
                      style: descTextStyle,
                    )
                  ],
                ),
                Spacer(),
                Text(
                  "€$price",
                  style: priceTextStyle,
                ),
              ],
            )),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color(0xFF04112F),
          body: SafeArea(
            child: ListView(
              children: [
                HeaderWidget(),
                SizedBox(height: 50,),
                options(0, 20, 'Montly', 'Good for starting up'),
                options(1, 30, 'Quartely', 'Focusing on building'),
                options(2, 50, 'Yearly', 'Steady company'),
                SizedBox(
                  height: 50,
                ),
                selectedIndex > -1 ? checkoutButton() : SizedBox(),
                SizedBox(height: 25,)
              ],
            ),
          )),
    );
  }
}
