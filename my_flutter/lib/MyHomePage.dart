import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // return Center(
    //   child: Text('Hello'),
    // );
    return Scaffold(
        appBar: AppBar(
          title: Text('Demo Day2'),
        ),
        body: Center(
            child: Text('Hello Flutter',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))));
  }
}
