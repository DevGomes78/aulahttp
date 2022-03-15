
import 'package:aulahttp/pages/login_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login',style: TextStyle(fontSize: 22),),
        centerTitle: true,
      ),
       body: LoginPage(),
    );
  }
}
