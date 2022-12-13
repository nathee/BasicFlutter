// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class MyShopShoesPage extends StatefulWidget {
  const MyShopShoesPage({Key? key}) : super(key: key);

  @override
  State<MyShopShoesPage> createState() => _MyShopShoesPageState();
}

class _MyShopShoesPageState extends State<MyShopShoesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _menuOne(),
            _menuTwo(),
            _menuThree(),
            _menuFour(),
            _menuFive(),
            _menuSix('Add to Cart'),
            _menuSix('Save'),
          ],
        ),
      ),
    ));
  }

  // เพิ่มส่วนแยก ============================================================
  Widget _menuOne() {
    return (Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(onPressed: () {}, icon: Icon(Icons.menu_sharp)),
        IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
      ],
    ));
  }

  Widget _menuTwo() {
    return (Center(
        child: Text(
      'Space Pets',
      style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
    )));
  }

  Widget _menuThree() {
    return (Center(
      child: Image.asset('assets/images/vecLogo.png'),
    ));
  }

  Widget _menuFour() {
    return (Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.star, color: Color.fromARGB(255, 231, 216, 3)),
        Icon(Icons.star, color: Color.fromARGB(255, 219, 204, 2)),
        Icon(Icons.star, color: Color.fromARGB(255, 199, 186, 2)),
        Icon(Icons.star, color: Color.fromARGB(255, 236, 234, 234)),
        Icon(Icons.star, color: Color.fromARGB(255, 236, 234, 234)),
        Text('136 Ratings')
      ],
    ));
  }

  Widget _menuFive() {
    return (Center(
        child: Text(
      'Price : 5,000.00 THB',
      style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
    )));
  }

  Widget _menuSix(String textT) {
    return (Center(
      child: ElevatedButton(
        child: Text(textT),
        onPressed: () {},
      ),
    ));
  }
}
