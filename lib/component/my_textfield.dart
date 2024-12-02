import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final dynamic controller;
  final String hintText;
  final bool obscurText;

  const MyTextfield(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscurText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0),
      child: TextField(
          controller: controller,
          obscureText: obscurText,
          decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.indigoAccent),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.indigoAccent),
            ),
            fillColor: Colors.grey.shade200,
            filled: true,
            hintText: hintText,
          )),
    );
  }
}
