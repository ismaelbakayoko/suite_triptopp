import 'package:flutter/material.dart';
import 'package:tourisme/component/Bouton.dart';
import 'package:tourisme/component/my_textfield.dart';
import 'package:tourisme/home.dart';
import 'package:tourisme/welcom.dart';

class SignUp extends StatelessWidget {
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();

  final directtionController = TextEditingController();

  SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Sign Up",
          style: TextStyle(color: Colors.indigoAccent),
        ),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => WelcomPage())),
            child: const Icon(Icons.close, color: Colors.indigoAccent)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                "Welcom ",
                style: TextStyle(
                  color: Colors.indigoAccent,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  MyTextfield(
                    controller: usernameController,
                    hintText: "User Name",
                    obscurText: false,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  MyTextfield(
                    controller: emailController,
                    hintText: "Email",
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
                  const SizedBox(
                    height: 20,
                  ),
                  MyTextfield(
                    controller: confirmpasswordController,
                    hintText: "Confirm Password",
                    obscurText: true,
                  ),
                  const Bouton(hintText: "sign Up", direction: HomePage())
                ],
              ),
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
