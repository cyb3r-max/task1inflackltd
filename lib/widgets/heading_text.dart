import 'package:flutter/cupertino.dart';

class HeadingText extends StatelessWidget {
  Color? color;
  String text;
  double size;

  HeadingText({this.color, required this.text, required this.size, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(color:  color, fontSize: size, fontWeight: FontWeight.bold),);
  }
}
