import 'package:flutter/material.dart';
import 'package:tourisme/firstPage.dart';
// import 'package:tourisme/Intro.dart';
import 'package:tourisme/home.dart';
// import 'package:tourisme/firstPage.dart';

// ignore: camel_case_types
class WelcomPage extends StatefulWidget {
  const WelcomPage({super.key});

  @override
  State<WelcomPage> createState() => _WelcomPageState();
}

class _WelcomPageState extends State<WelcomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        color: Colors.blue,
      ),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const firstPage(),
              ));
        },
        child: const Text(
          "TropTrotter",
          style: TextStyle(
            color: Colors.white,
            fontSize: 36,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ));
  }
}
