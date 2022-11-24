import 'package:flutter/material.dart';

class DrawerButtonPage extends StatefulWidget {
  const DrawerButtonPage({super.key});

  @override
  State<DrawerButtonPage> createState() => _DrawerButtonPageState();
}

class _DrawerButtonPageState extends State<DrawerButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.home)),
        title: Text('VEC'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.email)),
          IconButton(onPressed: () {}, icon: Icon(Icons.ads_click)),
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
        ],
      ),
      body: Center(
          child: Container(
        color: Colors.pink,
        child: Text(
          'TEST',
          style: TextAlign.center,
        ),
        width: double.infinity,
        height: double.maxFinite,
      )),
    );
  }
}
