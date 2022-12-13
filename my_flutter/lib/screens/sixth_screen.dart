import 'package:my_flutter/screens/home.dart';
import 'package:flutter/material.dart';

class SixthScreenPage extends StatefulWidget {
  const SixthScreenPage({Key? key}) : super(key: key);

  @override
  State<SixthScreenPage> createState() => _SixthScreenPageState();
}

class _SixthScreenPageState extends State<SixthScreenPage> {
  @override
  Widget build(BuildContext context) {
    const String txtName = 'ไอซี / Integrated Circuit';
    const String txtDesc01 =
        'หรือเรียกว่า แผงวงจรรวม เป็นอุปกรณ์ที่นำเอาอุปกรณ์อิเล็กทรอนิกส์ชนิดต่าง ๆ ได้แก่ ตัวต้านทาน ตัวเก็บประจุ ไดโอด ทรานซิสเตอร์ ส่วนประกอบต่าง ๆ ของวงจรมาต่อรวมกันโดยการย่อส่วนอุปกรณ์อิเล็กทรอนิกส์ดังกล่าวให้มีขนาดเล็กลง แต่ยังมีคุณสมบัติและการทำงานเหมือนเดิม ซึ่งแผงวงจรขนาดเล็กนี้เรียกว่า ชิป (Ship) มีประสิทธิภาพมากขึ้น ประหยัดพลังงานและทรัพยากร';
    const String txtDesc02 =
        'ประเภทการใช้งานของ IC\n 1.Digital IC เป็นสัญญาณที่ประกอบด้วยสัญญาณ เพียง 2 สถานะ คือ สูง-ต่ำ หรือ High-low หรือ เลข 1 และ 0 สัญญาณ Input-Output ของไอซีดิจิตอลจะต้องเป็นสัญญาณดิจิตอลเท่านั้น สัญญาณดิจิตอลจะมีระดับแรงดันในการทำงานแตกต่างกันไป โดยทั่วไปสัญญาณที่เป็น 0 จะมีแรงดันที่ 0 โวลต์ และ สัญญาณ ที่เป็น 1 จะมีแรงดันที่ 5 โวลต์ (เทียบกับ IC TTL) ทำหน้าที่ในการสวิทช์ทางดิจิตอล และไมโครโพรเซสเซอร์\n 2.Analog IC สัญญาณ Input และ Output ทั้งสองสัญญาณจะต่อเนื่อง ระดับสัญญาณ Output ขึ้นอยู่กับระดับสัญญาณ Input และระดับสัญญาณ Output เป็นฟังก์ชันเชิงเส้นของระดับสัญญาณ Input หน้าที่ของ IC ประเภทนี้คือจะทำหน้าที่ควบคุมแรงดันไฟฟ้า ขยายสัญญาณ เช่น OP Amp (Operation Amplifier) ซึ่ง OP Amp จะมีอัตราการขยายสูงมาก\n 3.Mixed IC เป็น IC ที่มีการทำงานร่วมกันระหว่าง Digital IC และ Analog IC ทำหน้าที่แปลง Digital เป็น Analog และแปลง Analog เป็น Digital';
    const String imgAddr01 = 'assets/images/ic.png';
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
