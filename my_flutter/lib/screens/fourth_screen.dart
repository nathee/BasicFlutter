import 'package:my_flutter/screens/home.dart';
import 'package:flutter/material.dart';

class FourthScreenPage extends StatefulWidget {
  const FourthScreenPage({Key? key}) : super(key: key);

  @override
  State<FourthScreenPage> createState() => _FourthScreenPageState();
}

class _FourthScreenPageState extends State<FourthScreenPage> {
  @override
  Widget build(BuildContext context) {
    const String txtName = 'ไดโอด / Diode';
    const String txtDesc01 =
        'ไดโอด (Diode) เป็นอุปกรณ์อิเล็กทรอนิกส์สารกึ่งตัวนำ มี 2 ขั่วคือ P และขั่ว N ถูกออกแบบมาเพื่อควบคุมทิศทางการไหลของประจุไฟฟ้ายอมให้กระแสไฟฟ้าไหลไปในทิศทางเดียวกัน และป้องกันกระแสการไหลกลับทิศทางเดิม หากมองหลักการทำงานก็เหมือนกับ วาล์วน้ำทิศทางเดียวไม่ยอมให้น้ำไหลกลับ ซึ่งนับเป็นประโยชน์อย่างมากในวงจรอิเล็กทรอนิกส์ เช่นวงจร บริดแปลงกระแสไฟฟ้ากระแสสลับ หรือป้องกันการสลับขั่วให้แก่วงจรอิเล็กทรอนิกส์';
    const String txtDesc02 =
        'ประเภทของไดโอด\n 1.ไดโอดเปล่งแสงหรือแอลอีดี (LED) เป็นไดโอนที่ใช้สารประเภทแกลเลี่ยมอาร์เซ็นไนต์ฟอสไฟต์ (Gallium Arsenide Phosphide) หรือสารแกลเลี้ยมฟอสไฟต์ มาเป็นสารกึ่งตัวนำ สารเหล่านี้มีคุณสมบัติ เมื่อได้รับไบอัสตรง จะเกิดแสงที่ตัวไดโอด LED ปัจจุบันนิยมนำมาใช้แทนหลอดไฟเพราะให้แสงสว่างที่มากกว่าและประหยัดไฟกว่า \n 2.โฟโตไดโอด (Photo Diode) เป็นไดโอดที่อาศัยแสงจากภายนอก การต่อโฟโตไดโอดเพื่อใช้งานจะเป็นแบบไบอัสกลับ ทั้งนี้เพราะไม่ต้องการให้โฟโตไดโอดทำงานทันทีทันใด โฟโตไดโอดได่้รับแสงสว่างจะเกิดกระแสรั่วไหลปริมาณกระแสรั่วไหลนี้เพิ่มขึ้นตามความเข้มของแสง\n 3.ไดโอดกำลัง (Power Diode) นิยมนำมาใช้กับงานที่กำลังไฟฟ้าสูง กระแสสูงๆ ทนความต้อนได้อย่างดี นิยมนำมาใช้ประกอบเป็นวงจรเรียงกระแส ในอุปกรณ์อิเล็กทรอนิกส์ เป็นต้น\n 3.ไดโอดกำลัง (Power Diode) นิยมนำมาใช้กับงานที่กำลังไฟฟ้าสูง กระแสสูงๆ ทนความต้อนได้อย่างดี นิยมนำมาใช้ประกอบเป็นวงจรเรียงกระแส ในอุปกรณ์อิเล็กทรอนิกส์ เป็นต้น\n 4.ซีเนอร์ไดโอด (Zenner Diode) เป็นอุปกรณ์สารกึงตัวนำวิธีการต่อจะต่อแบบไบอัสกลับ นิยมนำมาใช้ควบคุมแรงดันที่ต้องการแรงดันคงที่ เช่น อุปกรณ์แหล่งจ่ายไฟ หรือ โวลเทจเรกูเลเตอร์';
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
