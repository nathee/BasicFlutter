import 'package:flutter/material.dart';

class ButtonWidgetPage extends StatefulWidget {
  const ButtonWidgetPage({super.key});

  @override
  State<ButtonWidgetPage> createState() => _ButtonWidgetPageState();
}

class _ButtonWidgetPageState extends State<ButtonWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              print('ok');
            },
            icon: Icon(Icons.menu)),
        title: Text('WorkshopXX'),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                print('ok');
              },
              icon: Icon(Icons.notifications)),
        ],
      ),
      body: Center(
        child:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.home),
            label: Text('Home'),
          ),
        ]),
      ),
    );
  }
}
