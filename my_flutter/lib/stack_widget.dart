import 'package:flutter/material.dart';

class StackWidgetPage extends StatefulWidget {
  const StackWidgetPage({Key? key}) : super(key: key);

  @override
  State<StackWidgetPage> createState() => _StackWidgetPageState();
}

class _StackWidgetPageState extends State<StackWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Demo Stack'),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '1',
                    style: TextStyle(fontSize: 100, color: Colors.blue),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '2',
                    style: TextStyle(fontSize: 100, color: Colors.blue),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.amberAccent, shape: BoxShape.rectangle),
                    child: Image.asset('assets/images/firstKoala.png',
                        fit: BoxFit.scaleDown),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '3',
                    style: TextStyle(fontSize: 100, color: Colors.blue),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Text(
                '2',
                style: TextStyle(fontSize: 100, color: Colors.pink),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Text(
                '3',
                style: TextStyle(fontSize: 100, color: Colors.orange),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Icon(
                Icons.favorite,
                size: 100,
                color: Colors.blueAccent,
              ),
            )
          ],
        ));
  }
}
