// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:my_flutter/components/content_box.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('พื้นฐานอุปกรณ์อิเล็กทรอนิกส์'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                ContentBox(
                  colorText: Colors.white70,
                  descText: 'ตัวต้านทาน',
                  txtIcon: Icons.boy,
                  imgAddr: 'assets/images/resistor.png',
                  menuNum: 1,
                ),
                ContentBox(
                  colorText: Colors.white70,
                  descText: 'ตัวเก็บประจุ',
                  txtIcon: Icons.girl,
                  imgAddr: 'assets/images/capacitor.png',
                  menuNum: 2,
                ),
              ],
            )),
            Expanded(
                child: Row(
              children: <Widget>[
                ContentBox(
                  colorText: Colors.white70,
                  descText: 'ตัวเหนี่ยวนำ',
                  txtIcon: Icons.boy,
                  imgAddr: 'assets/images/inductor.png',
                  menuNum: 3,
                ),
                ContentBox(
                  colorText: Colors.white70,
                  descText: 'ไดโอด',
                  txtIcon: Icons.girl,
                  imgAddr: 'assets/images/diode.png',
                  menuNum: 4,
                ),
              ],
            )),
            Expanded(
                child: Row(
              children: <Widget>[
                ContentBox(
                  colorText: Colors.white70,
                  descText: 'ทรานซิสเตอร์',
                  txtIcon: Icons.boy,
                  imgAddr: 'assets/images/transistor.png',
                  menuNum: 5,
                ),
                ContentBox(
                  colorText: Colors.white70,
                  descText: 'ไอซี',
                  txtIcon: Icons.girl,
                  imgAddr: 'assets/images/ic.png',
                  menuNum: 6,
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
