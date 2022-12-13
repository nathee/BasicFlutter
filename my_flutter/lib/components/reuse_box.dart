import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

class ReuseBox extends StatelessWidget {
// Create Variable

  const ReuseBox(
      {super.key,
      @required this.colorText,
      @required this.descText,
      @required this.txtIcon});

  final String? descText;
  final Color? colorText;
  final IconData? txtIcon;
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
              Icon(
                // Icons.book, //Change
                txtIcon,
                size: 50.0,
                color: Colors.white,
              ),
              SizedBox(
                height: 15.0,
              ),
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
