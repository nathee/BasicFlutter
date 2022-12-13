import 'package:my_flutter/screens/home.dart';
import 'package:flutter/material.dart';

class ThirdScreenPage extends StatefulWidget {
  const ThirdScreenPage({Key? key}) : super(key: key);

  @override
  State<ThirdScreenPage> createState() => _ThirdScreenPageState();
}

class _ThirdScreenPageState extends State<ThirdScreenPage> {
  @override
  Widget build(BuildContext context) {
    const String txtName = 'ตัวเนี่ยวนำ / Inductor';
    const String txtDesc01 =
        'ตัวเหนี่ยวนำ (Inductor) เป็นอุปกรณ์ที่ใช้ในการเหนี่ยวนำไฟฟ้า โดยอาศัยหลักการสนามแม่เหล็กตัดผ่านขดลวด จะทำให้เกิดการไหลของกระแสไฟฟ้าในขดลวด ซึ่งจะทำให้เกิดการเหนี่ยวนำขึ้น ตัวเหนี่ยวนำแบ่งออกเป็น 2 ชนิดคือ แบบค่าคงที่และแบบปรับค่าได้ ตัวเหนี่ยวนำเรียกอีกอย่างหนึ่งว่า อินดักเตอร์หรือเรียกย่อ ๆ ว่าตัวแอล (L) หน่วยของการเหนี่ยวนำคือ เฮนรี่ (Henry) นิยมใช้ในการปรับความถี่ของเครื่องรับวิทยุและ โทรทัศน์โดยอาศัยหลักการของลวดทองแดง นำมาขดหลาย ๆ รอบที่เรียกว่าคอย (Coil) แล้วจ่ายกระแสไฟฟ้าเข้าไป เพื่อให้แสดงคุณสมบัติของตัวเหนี่ยวนำ โครงสร้างประกอบด้วยขดลวด (Coil) พันรอบแกน (Core) ซึ่งแกนนี้อาจจะเป็นแกนอากาศ, แกนเหล็ก, หรือแกนเฟอร์ไรท์ขึ้นอยู่กับคุณสมบัติของการเหนี่ยวนำไฟฟ้า';
    const String txtDesc02 =
        'ชนิดของตัวเหนี่ยวนำ ปัจจุบันมีหลายแบบหลายขนาด วัสดุที่ใช้ทำแกนที่นิยมก็คือ แกนอากาศ , แกนเหล็ก และแกนเฟอร์ไรท์ เราสามารถแบ่งตัวเหนี่ยวนำได้ 2 ประเภทใหญ่ ๆ คือ \n 1.ตัวเหนี่ยวนำแบบค่าคงที่ (Fixed Inductors) คือตัวเหนี่ยวนำที่ไม่สามารถเปลี่ยนแปลงค่าได้ โดยปกติตัวเหนี่ยวนำประเภทนี้ ทำมาจากขดลวดทองแดง แกนที่ใช้พันขดลวดจะมีปลายลวดยื่นออกมาทั้งสองข้าง รูปร่างโดยทั่วไปจะเป็นแกนยาวแบบทรงกระบอก มีชื่อเรียกแตกต่าง กันเช่น โซลินอยด์, เซอร์เฟสเมาส์, โช๊ค, ทอร์รอยด์ และแบบแถบสี ฯลฯ เป็นต้น \n 2.ตัวเหนี่ยวนำแบบปรับค่าได้ (Variable Inductors) นิยมใช้ในเครื่องรับวิทยุ ค่าการเหนี่ยวนำจะเปลี่ยนแปลงไปตามการเคลื่อนที่ของแกนหมุน ที่สามารถปรับสกรูเลื่อนตำแหน่งของขดลวดให้เข้าหรือออก เพื่อเปลี่ยนค่าของความเหนี่ยวนำ ถ้าแกนเคลื่อนที่ออกมานอกสุด ค่าความเหนี่ยวนำจะมีค่าต่ำ แต่ถ้าหมุนสกรูให้แกนเคลื่อนที่เข้าไปในขดลวดมาก จะทำให้ค่าความเหนี่ยวนำมากขึ้นตามไปด้วย ในการปรับควรใช้เครื่องมือที่ทำด้วยพลาสติก หรืออุปกรณ์จำพวกที่ไม่ใช่โลหะ เนื่องจากวัสดุที่ทำมาจากโลหะจะไปรบกวนการเกิดสนามแม่เหล็ก และมีผลต่อค่าความความเหนี่ยวนำได้';
    const String imgAddr01 = 'assets/images/inductor.png';
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
