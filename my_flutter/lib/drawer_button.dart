import 'package:flutter/material.dart';

class DrawerButtonPage extends StatefulWidget {
  const DrawerButtonPage({Key? key}) : super(key: key);

  @override
  State<DrawerButtonPage> createState() => _DrawerButtonPageState();
}

class _DrawerButtonPageState extends State<DrawerButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.home)),
            // IconButton(onPressed: () {}, icon: Icon(Icons.menu_open))
          ],
        ),
        title: Text('Drawer Demo'),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.add_shopping_cart)),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.email),
            tooltip: 'Email',
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.contact_phone)),
        ],
      ),
      body: Center(
        child: Container(
          color: Color.fromARGB(255, 25, 120, 192),
          child: Center(
              child: Text(
            'Hello World',
            style: TextStyle(fontSize: 30, color: Colors.white),
          )),
          width: double.infinity,
          height: double.infinity,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text('Main Menu')),
            ListTile(
              onTap: () {
                print('List1');
              },
              title: Text('Sub Menu1'),
            ),
            ListTile(
              onTap: () {},
              title: Text('Sub Menu2'),
            ),
            ListTile(
              onTap: () {},
              title: Text('Sub Menu3'),
            ),
            ListTile(
              onTap: () {},
              title: Text('Sub Menu2'),
            ),
            ListTile(
              onTap: () {},
              title: Text('Sub Menu3'),
            ),
            ListTile(
              onTap: () {},
              title: Text('Sub Menu2'),
            ),
            ListTile(
              onTap: () {},
              title: Text('Sub Menu3'),
            ),
            ListTile(
              onTap: () {},
              title: Text('Sub Menu2'),
            ),
            ListTile(
              onTap: () {},
              title: Text('Sub Menu3'),
            ),
            ListTile(
              onTap: () {},
              title: Text('Sub Menu2'),
            ),
            ListTile(
              onTap: () {},
              title: Text('Sub Menu10'),
            ),
          ],
        ),
      ),
      // extendBody: true,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          color: Color.fromARGB(255, 25, 120, 150),
          height: 50,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {},
        child: Icon(
          Icons.add,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
