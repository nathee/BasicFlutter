import 'package:flutter/material.dart';

class ColumnPage extends StatefulWidget {
  const ColumnPage({Key? key}) : super(key: key);

  @override
  State<ColumnPage> createState() => _ColumnPageState();
}

class _ColumnPageState extends State<ColumnPage> {
  @override
  Widget build(BuildContext context) {
    // return Center(
    //   child: Text('Hello'),
    // );
    return Scaffold(
        appBar: AppBar(
          title: Text('Demo Column'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text('R11',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text('R2',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text('R3',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ],
            ),
            Text('Col2',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('Col2',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ],
        )));
  }
}
