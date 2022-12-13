// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:my_flutter/screens/first_screen.dart';
import 'package:flutter/material.dart';

class SecondScreenPage extends StatefulWidget {
  const SecondScreenPage({Key? key}) : super(key: key);

  @override
  State<SecondScreenPage> createState() => _SecondScreenPageState();
}

class _SecondScreenPageState extends State<SecondScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('Second Page'),
        // ),
        body:
            // Center(
            //   child: Padding(
            //     padding: const EdgeInsets.all(20.0),
            //     child: Text('Hello'),
            //   ),
            // )
            GestureDetector(
                child: Center(
                  child: Text('ลากนิ้วเพื่อไปหน้าจอก่อนหน้า'),
                ),
                onPanUpdate: (details) {
                  Navigator.pop(context);
                }));
  }
}
