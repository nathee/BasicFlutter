import 'package:my_flutter/screens/home.dart';
import 'package:flutter/material.dart';

class FifthScreenPage extends StatefulWidget {
  const FifthScreenPage({Key? key}) : super(key: key);

  @override
  State<FifthScreenPage> createState() => _FifthScreenPageState();
}

class _FifthScreenPageState extends State<FifthScreenPage> {
  @override
  Widget build(BuildContext context) {
    const String txtName = 'ทรานซิสเตอร์ / Transistor';
    const String txtDesc01 =
        'ทรานซิสเตอร์เป็นอุปกรณ์สารกึ่งตัวนำที่ถูกพัฒนาขึ้นมาใช้งานแทนหลอดสุญญากาศซึ่งมีค่าสูญเสียต่ำและประสิทธิภาพสูงกว่ามาก ทรานซิสเตอร์สามารถประยุกต์ใช้งานได้หลายอย่าง เช่น ใช้ขยายสัญญาณ (Amplifier) ทำหน้าที่เป็นสวิตช์ชิง (Switching) กำเนิดสัญญาณใช้รักษาแรงดันไฟฟ้าให้คงที่ เป็นต้น หน้าที่หลักของทรานซิสเตอร์ คือ “ขยายกระแสไฟฟ้า” โดยการควบคุมกระแสไฟฟ้าอินพุตส่วนน้อยบริเวณขาเบส(Base : B) แล้วทำให้เกิดกระแสไฟฟ้าเอาต์พุตส่วนใหญ่บริเวณขาคอลเล็กเตอร์(Collector : C)';
    const String txtDesc02 =
        'ทรานซิสเตอร์เป็นอุปกรณ์สารกึ่งตัวนำชนิด 2 รอยต่อ (Bipolar Junction Transistor ; BJT) มีขาใช้งานจำนวน 3 ขา คือ\n 1.ขาเบส (Base ; B)\n 2.ขาอิมิตเตอร์ (Emitter ; E)\n 3.ขาคอลเล็กเตอร์ (Collector ; C)\nแบ่งตามโครงสร้างของสารกึ่งตัวนำมี 2 ชนิด คือ\n 1. ทรานซิสเตอร์ชนิด PNP\n 2. ทรานซิสเตอร์ชนิด NPN';
    const String imgAddr01 = 'assets/images/transistor.png';
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
