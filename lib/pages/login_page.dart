import 'package:aulahttp/components/text_widget.dart';
import 'package:aulahttp/repository/login_repository.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  var emailController = TextEditingController();
  var senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildSingleChildScrollView(context),
    );
  }

  buildSingleChildScrollView(context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 30),
            Container(
              height: 250,
              child: Image.asset(
                'images/User_Icon.png',
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            TextWidget(
              'Email',
              'Digite o email',
              const Icon(Icons.email),
              ObscureText: false,
              controller: emailController,
            ),
            const SizedBox(height: 20),
            TextWidget(
              'Senha',
              'Digite a Senhal',
              const Icon(Icons.lock),
              ObscureText: true,
              controller: senhaController,
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: (){
                LoginRepository().login(
                    context,
                    emailController.text ='eve.holt@reqres.in',
                    senhaController.text = 'cityslicka',
                );
              },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
