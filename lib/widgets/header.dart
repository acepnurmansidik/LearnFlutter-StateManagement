import 'package:flutter/material.dart';
import 'package:state_management/theme.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 25, left: 32, right: 32),
      child: Column(
        children: [
          Image.asset(
            'assets/images/img_profile.png',
            height: 267,
            width: 200,
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Upgrade to ',
                style: titleTextStyle,
              ),
              Text(
                'Pro',
                style: titleProTextStyle,
              )
            ],
          ),
          SizedBox(
            height: 9,
          ),
          Column(
            children: [
              Text(
                'Go unlock all features and\n build your own business bigger',
                style: subtitleTextStyle,
                textAlign: TextAlign.center,
              )
            ],
          )
        ],
      ),
    );
  }
}
