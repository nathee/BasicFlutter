import 'package:flutter/material.dart';

class BmiDemoPage extends StatefulWidget {
  const BmiDemoPage({super.key});

  @override
  State<BmiDemoPage> createState() => _BmiDemoPageState();
}

class _BmiDemoPageState extends State<BmiDemoPage> {
  final String textTitle = 'BMI Demo',
      labelText01 = 'Height in CM',
      labelText02 = 'Weight in KG';
  // Create Controller
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  // Function calulate BMI
  double _result = 0.0;
  void calculateBMI() {
    double h = double.parse(_heightController.text) / 100;
    double w = double.parse(_weightController.text);
    double r = w / (h * h);

    setState(() {
      _result = r;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(textTitle),
      ),
      body: Column(children: <Widget>[
        TextField(
          // Add Controller
          controller: _heightController,
          decoration: InputDecoration(
              labelText: labelText01,
              icon: Icon(
                Icons.trending_up,
                color: Colors.pink,
                size: 24.0,
              )),
        ),
        SizedBox(height: 20),
        TextField(
          // Add Controller
          controller: _weightController,
          decoration: InputDecoration(
              labelText: labelText02, icon: Icon(Icons.trending_up)),
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton.icon(
            onPressed: calculateBMI,
            icon: Icon(Icons.calculate),
            label: Text('Cal')),
        SizedBox(
          height: 20,
        ),
        Text('BMI Value : ${_result.toStringAsFixed(2)}')
      ]),
    );
  }
}
