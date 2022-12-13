// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:bbl_project/login_demo.dart';
import 'package:bbl_project/second_screen.dart';
import 'package:flutter/material.dart';

class FirstScreenPage extends StatefulWidget {
  const FirstScreenPage({Key? key}) : super(key: key);

  @override
  State<FirstScreenPage> createState() => _FirstScreenPageState();
}

class _FirstScreenPageState extends State<FirstScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('First Screen'), actions: [
          Icon(Icons.home),
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LogInPage();
                }));
              },
              icon: Icon(Icons.login)),
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(
                Icons.add,
                size: 20.0,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return SecondScreenPage();
                }),
              );
            },
          )
        ]),
        body: GestureDetector(
          onDoubleTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SecondScreenPage();
            }));
          },
          child: Center(child: Text('กรุณาแตะ 2 ครั้งเพื่อไปหน้าจอถัดไป')),
        ));
  }
}
