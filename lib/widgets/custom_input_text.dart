import 'package:flutter/material.dart';

class CustomInputText extends StatelessWidget {
  String inputText;
  bool? isPassword=false;
  bool? isNumber=false;
  CustomInputText({required this.inputText, this.isNumber, this.isPassword, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: isNumber==true?TextInputType.number:TextInputType.visiblePassword,
      obscureText: (isPassword==true)?true:false,
      decoration: InputDecoration(
          focusedBorder:OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none),
          labelText: inputText,
          fillColor: Colors.grey.shade300,
          filled: true,
          border: InputBorder.none,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none)),
    );
  }
}
