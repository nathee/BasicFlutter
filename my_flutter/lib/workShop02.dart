import 'package:flutter/material.dart';

class MyWorkShop02 extends StatefulWidget {
  const MyWorkShop02({Key? key}) : super(key: key);

  @override
  State<MyWorkShop02> createState() => _MyWorkShop02State();
}

class _MyWorkShop02State extends State<MyWorkShop02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Workshop02'),
      ),
      body: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 40,
                height: 40,
                padding: const EdgeInsets.all(2),
                child: Image.asset('assets/images/hambergerMenu.png',
                    fit: BoxFit.fill),
              ),
              Container(
                width: 40,
                height: 40,
                padding: const EdgeInsets.all(2),
                child: Image.asset('assets/images/shoppingCart.png',
                    fit: BoxFit.fill),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('LOGO สำนักงานคณะกรรมการการอาชีวศึกษา',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.red.shade800,
                      fontWeight: FontWeight.bold)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Image.asset('assets/images/vecLogo.png',
                    fit: BoxFit.scaleDown),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 30,
                height: 30,
                padding: const EdgeInsets.all(1),
                child: Image.asset('assets/images/enableStar.png',
                    fit: BoxFit.scaleDown),
              ),
              Container(
                width: 30,
                height: 30,
                padding: const EdgeInsets.all(1),
                child: Image.asset('assets/images/enableStar.png',
                    fit: BoxFit.scaleDown),
              ),
              Container(
                width: 30,
                height: 30,
                padding: const EdgeInsets.all(1),
                child: Image.asset('assets/images/enableStar.png',
                    fit: BoxFit.scaleDown),
              ),
              Container(
                width: 30,
                height: 30,
                padding: const EdgeInsets.all(1),
                child: Image.asset('assets/images/disableStar.png',
                    fit: BoxFit.scaleDown),
              ),
              Container(
                width: 30,
                height: 30,
                padding: const EdgeInsets.all(1),
                child: Image.asset('assets/images/disableStar.png',
                    fit: BoxFit.scaleDown),
              ),
              Text(' 136 Ratings'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Price : 5,000 THB',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.red.shade800,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('Add to cart'),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
