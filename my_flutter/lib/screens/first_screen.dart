import 'package:my_flutter/screens/home.dart';
import 'package:flutter/material.dart';

class FirstScreenPage extends StatefulWidget {
  const FirstScreenPage({Key? key}) : super(key: key);

  @override
  State<FirstScreenPage> createState() => _FirstScreenPageState();
}

class _FirstScreenPageState extends State<FirstScreenPage> {
  @override
  Widget build(BuildContext context) {
    const String txtName = 'ตัวต้านทาน / Resistor';
    const String txtDesc01 =
        'ตัวต้านทานไฟฟ้า (Resistor) เป็นอุปกรณ์ที่ผลิตขึ้นมามีค่าเฉพาะค่าค่าหนึ่งที่ใช้ในการต้านการไหลของกระแสไฟฟ้าซึ่งเป็นอุปกรณ์ที่มีใช้มากที่สุดใน วงจรอิเล็กทรอนิกส์มักเรียกสั้นๆ ว่า อาร์ “R” มีคุณสมบัติในการลดกระแสและแรงดันไฟฟ้า   โดยสามารถนำไปใช้ได้ทั้ง แรงดันไฟฟ้ากระแสตรง และแรงดันไฟฟ้ากระแสสลับสัญลักษณ์ของความต้านทาน';
    const String txtDesc02 =
        'หน่วยของความต้านทาน (Resistance) ค่าความต้านทานของตัวต้านทาน ถูกกำหนดให้มีหน่วยเรียกเป็น โอห์ม (OHM) เขียนแทนด้วยเครื่องหมายอักษรกรีกโบราณ คือ Ω (โอ เมก้า หรือ โอห์ม) ซึ่งได้จากค่ามาตรฐาน โดยการเอาแรงดันไฟฟ้า 1 โวลต์ ต่อกับความต้านทาน 1 โอห์ม และทำให้มีกระแสไหลในวงจร 1 แอมแปร์ ประกอบด้วย หน่วยค่าความต้านทานต่าง ๆ';
    const String imgAddr01 = 'assets/images/resistor.png';
    return Scaffold(
      appBar: AppBar(title: Text(txtName), actions: [
        IconButton(
            onPressed: () {
              Navigator.pop(context, MaterialPageRoute(builder: (context) {
                return HomeScreen();
              }));
            },
            icon: const Icon(Icons.home)),
      ]),
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: SizedBox(
                child: Image.asset(
                  imgAddr01,
                  width: 200,
                  height: 200,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(txtName,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 5),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(txtDesc01,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                  textAlign: TextAlign.justify),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(txtDesc02,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                  textAlign: TextAlign.justify),
            ),
            const SizedBox(height: 10),
          ]),
        ),
      ),
    );
  }
}
