import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

class ContentBox extends StatelessWidget {
// Create Variable

  const ContentBox(
      {super.key,
      @required this.colorText,
      @required this.descText,
      @required this.txtIcon,
      @required this.imgAddr});

  final String? descText;
  final Color? colorText;
  final IconData? txtIcon;
  final String? imgAddr;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          // color: Colors.teal, //Change
          color: colorText,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(child: Image.asset('$imgAddr'), height: 150),
              Text(
                // 'Ordbog', //Change
                '$descText',
                style: TextStyle(fontSize: 24.0, color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
