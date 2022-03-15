import 'package:aulahttp/pages/login_page.dart';
import 'package:flutter/material.dart';

import '../home_page.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          Container(
            height: 250,
            child: Image.asset(
              'images/User_Icon.png',
              color: Colors.white,
            ),
          ),
          const Text('Carregando...'),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: LinearProgressIndicator(),
          ),
        ],
      ),
    );
  }
}
