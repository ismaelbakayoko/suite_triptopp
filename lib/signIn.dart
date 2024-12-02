import 'package:flutter/material.dart';
import 'package:tourisme/component/bouton.dart';
import 'package:tourisme/component/my_textfield.dart';
import 'package:tourisme/home.dart';

class Signin extends StatelessWidget {
  Signin({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                "Welcom Back",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 350,
              width: double.infinity,
              padding: const EdgeInsets.only(top: 50),
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: Column(children: [
                SizedBox(
                  height: 30,
                ),
                MyTextfield(
                  controller: usernameController,
                  hintText: "Nom",
                  obscurText: false,
                ),
                const SizedBox(
                  height: 20,
                ),
                MyTextfield(
                  controller: passwordController,
                  hintText: "Password",
                  obscurText: true,
                ),
                const Bouton(hintText: "Login", direction: HomePage()),
              ]),
            ),
            Container(
              padding: EdgeInsets.only(top: 30),
              alignment: Alignment.topCenter,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.grey[200],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/facebook.png")),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  Container(
                    padding: EdgeInsets.all(2.1),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/google.png")),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
