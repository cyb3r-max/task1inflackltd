import 'package:flutter/cupertino.dart';

class SmallText extends StatelessWidget {
  Color? color;
  String smallText;
  double smallTextSize;
  bool? isBold=false;

  SmallText({this.color, required this.smallText, required this.smallTextSize, Key? key, this.isBold}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(smallText, style: TextStyle(color:  color, fontSize: smallTextSize, fontWeight: isBold==true?FontWeight.bold:FontWeight.normal,),);
  }
}
