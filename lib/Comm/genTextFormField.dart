import 'package:campagne_v2/Comm/comHelper.dart';
import 'package:flutter/material.dart';

import 'comHelper.dart';

class getTextFormField extends StatelessWidget {
  TextEditingController controller;
  String hintname;
  IconData icon;
  bool isobscureText;
  TextInputType inputType;
  bool isEnable;

  //color of hintname
  final primaryColor = Color(0xFF151026);

  getTextFormField(
      {this.controller,
      this.icon,
      this.hintname,
      this.isobscureText = false,
      this.inputType = TextInputType.text,
      this.isEnable = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 700.0,
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextFormField(
        controller: controller,
        obscureText: isobscureText,
        keyboardType: inputType,
        enabled: isEnable,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Veuillez entrez $hintname';
          }
          if (hintname == "Email" && !validateEmail(value)) {
            return 'Veuillez entrer un email valide ';
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
          labelText: hintname,
          hintText: hintname,
          fillColor: Colors.grey[200],
          filled: true,
        ),
      ),
    );
  }
}
