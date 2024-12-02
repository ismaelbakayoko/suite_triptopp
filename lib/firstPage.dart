import 'package:flutter/material.dart';
import 'package:tourisme/signIn.dart';
import 'package:tourisme/signUP.dart';

// ignore: camel_case_types
class firstPage extends StatelessWidget {
  const firstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsetsDirectional.only(top: 100),
            height: 350,
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 40),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: const Icon(
                    Icons.location_city_rounded,
                    size: 36,
                    color: Colors.blue,
                  ),
                ),
                const Text(
                  "TripTropp",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                    // fontWeight: FontWeight.w500
                  ),
                ),
                const Text(
                  "Bakus Travel",
                  style: TextStyle(
                      color: Colors.white60,
                      fontWeight: FontWeight.normal,
                      fontSize: 45,
                      fontStyle: FontStyle.italic),
                ),
                Container(
                  height: 5,
                  width: 25,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Signin()),
                    )
                  },
                  child: Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 150, bottom: 20),
                    height: 50,
                    width: 330,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: const Text(
                      "Login",
                      style: TextStyle(color: Colors.indigoAccent),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 2,
                      width: 150,
                      color: Colors.white,
                    ),
                    const Text(
                      "OR",
                      style: TextStyle(color: Colors.white),
                    ),
                    Container(
                      height: 2,
                      width: 150,
                      color: Colors.white,
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUp(),
                      ),
                    )
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 20),
                    alignment: Alignment.center,
                    height: 50,
                    width: 330,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: const Text(
                      "Create an account",
                      style: TextStyle(color: Colors.indigoAccent),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
