import 'package:my_flutter/screens/home.dart';
import 'package:flutter/material.dart';

class SecondScreenPage extends StatefulWidget {
  const SecondScreenPage({Key? key}) : super(key: key);

  @override
  State<SecondScreenPage> createState() => _SecondScreenPageState();
}

class _SecondScreenPageState extends State<SecondScreenPage> {
  @override
  Widget build(BuildContext context) {
    const String txtName = 'ตัวเก็บประจุ / Capacitor';
    const String txtDesc01 =
        'คาปาซิเตอร์ (Capacitor) หรือ ตัวเก็บประจุ  เป็นอุปกรณ์อิเล็กทรอนิกส์อย่างหนึ่ง ทำหน้าที่เก็บพลังงานในรูปสนามไฟฟ้าที่สร้างขึ้นระหว่างคู่ฉนวน โดยมีค่าประจุไฟฟ้าเท่ากัน แต่มีชนิดของประจุตรงข้ามกัน มีชื่อเรียกสั้นๆ ว่า แคป (Cap) เป็นอุปกรณ์พื้นฐานสำคัญในงานอิเล็กทรอนิกส์ และพบได้แทบทุกวงจร มีคุณสมบัติตรงข้ามกับตัวเหนี่ยวนำ จึงมักใช้หักร้างกัน หรือทำงานร่วมกันในวงจรต่างๆ นิยมนำมาใช้ประกอบในวงจรกรองกระแส (Filter) วงจรบายพาส (By-pass) วงจรสตาร์ทเตอร์ (Starter) วงจรถ่ายทอดสัญญาณ (Coupling) เป็นต้น';
    const String txtDesc02 =
        'การทำงานของตัวเก็บประจุ มีอยู่ 2 ลักษณะ ได้แก่\n 1.การเก็บประจุ การเก็บประจุ เกิดขึ้นเมื่อมีการเก็บอิเล็กตรอนไว้ที่เพลตของตัวเก็บประจุ เมื่อนำแบตเตอรี่ต่อกับตัวเก็บประจุ อิเล็กตรอนจากขั้วลบของแบตเตอรี่ จะเข้าไปรวมกันที่แผ่นเพลต ทำให้เกิดประจุลบขึ้นและยังส่งสนามไฟฟ้าไป ผลักอิเล็กตรอนของแผ่นเพลตตรงข้าม ซึ่งโดยปกติในแผ่นเพลตจะมี ประจุเป็นบวก และลบ ปะปนกันอยู่ เมื่ออิเล็กตรอนจากแผ่นเพลตนี้ถูก ผลักให้หลุดออกไปแล้วจึงเหลือประจุบวกมากกว่าประจุลบ ยิ่งอิเล็กตรอนถูกผลักออกไปมากเท่าไร แผ่นเพลตนั้นก็จะเป็นบวกมากขึ้นเท่านั้น\n 2.การคายประจุ เกิดขึ้นเมื่อตัวเก็บประจุที่ถูกเก็บประจุแล้ว ถ้าเรายังไม่นำขั้วตัวเก็บประจุมาต่อกัน อิเล็กตรอนก็ยังคงอยู่ที่แผ่นเพลต แต่ถ้ามีการครบวงจร ระหว่างแผ่นเพลตทั้งสองเมื่อไร อิเล็กตรอนก็จะวิ่งจากแผ่นเพลตทางด้านลบ ไปครบวงจรที่แผ่นเพลตบวกทันที';
    const String imgAddr01 = 'assets/images/capacitor.png';
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
