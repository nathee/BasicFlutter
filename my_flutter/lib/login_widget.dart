import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final String textTitle = 'Login Demo',
      labelText01 = 'Email',
      labelText02 = 'Password';
  // Create Controller
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  // Function calulate BMI
  String _result = " ";
  void loginValidate() {
    String h = _emailController.text;
    String w = _passwordController.text;

    setState(() {
      _result = h + w;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(textTitle),
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: SizedBox(
              child: Image.asset(
                'assets/images/vecLogo.png',
                // width: 120,
                // height: 120,
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                // Add Controller
                controller: _emailController,
                decoration: new InputDecoration(
                  focusedBorder: const OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.greenAccent, width: 1.0),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 1.0),
                  ),
                  hintText: labelText01,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              // Add Controller
              controller: _passwordController,
              decoration: new InputDecoration(
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.greenAccent, width: 1.0),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 1.0),
                ),
                hintText: labelText02,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text('Forget Password',
              style:
                  TextStyle(color: Colors.pink, fontWeight: FontWeight.bold)),
          Text('${_result}'),
          ElevatedButton.icon(
              onPressed: loginValidate,
              icon: const Icon(Icons.login),
              label: const Text('Login')),
          const SizedBox(
            height: 20,
          ),
          const Text('New user?, Create Account')
        ]),
      ),
    );
  }
}
