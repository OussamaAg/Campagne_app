import 'package:campagne_v2/Comm/comHelper.dart';
import 'package:flutter/material.dart';

import 'comHelper.dart';

class getTextFormField extends StatelessWidget {
  TextEditingController controller;
  String hintname;
  IconData icon;
  bool isobscureText;
  TextInputType inputType;

  //color of hintname
  final primaryColor = Color(0xFF151026);

  getTextFormField(
      {required this.controller,
      required this.icon,
      required this.hintname,
      this.isobscureText = false,
      this.inputType = TextInputType.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 700.0,
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextFormField(
        controller: controller,
        obscureText: isobscureText,
        keyboardType: inputType,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Veuillez entrer $hintname";
          }
          if (hintname == "Email" && !validateEmail(value)) {
            return "Veuillez entrer un email valide";
          }
          return null;
        },
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            borderSide: BorderSide(color: Colors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            borderSide: BorderSide(color: primaryColor),
          ),
          prefixIcon: Icon(icon),
          hintText: hintname,
          fillColor: Colors.grey[200],
          filled: true,
        ),
      ),
    );
  }
}
