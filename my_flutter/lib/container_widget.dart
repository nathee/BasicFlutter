import 'package:flutter/material.dart';

class ContainerPage extends StatefulWidget {
  const ContainerPage({Key? key}) : super(key: key);

  @override
  State<ContainerPage> createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Container Demo'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Container(
            //color: Colors.blue,
            child: Align(
                alignment: Alignment.bottomCenter,
                child: Text('Hello Container')),
            width: 300, //double.infinity, //
            height: 300, //double.infinity, //
            decoration: BoxDecoration(
                border: Border.all(color: Colors.pink, width: 10),
                // color: Colors.lightGreen,
                gradient: LinearGradient(
                    colors: [Colors.red, Colors.green, Colors.blue]),
                boxShadow: [BoxShadow(blurRadius: 100)],
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'https://cdn.pixabay.com/photo/2017/09/25/13/12/puppy-2785074_960_720.jpg'))),
            // transform: Matrix4.rotationZ(45),
          ),
        ));
  }
}
