import 'package:flutter/material.dart';

class optionsMenu extends StatelessWidget {
  const optionsMenu({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(14)
          )
        ),
      ),
    );
  }
}