import 'package:flutter/material.dart';
import 'package:task1inflackltd/widgets/smallText.dart';
import '../dimension.dart';

class CustomCategoryCardDesign extends StatelessWidget {
  String catCardText;
  String catCardImage;
  CustomCategoryCardDesign({required this.catCardText, required this.catCardImage, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 120,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage(catCardImage), height: 60, width: 70,),
          SizedBox(height: 5,),
          SmallText(smallText: catCardText, smallTextSize: Dimensions.fontHeight2, isBold: true, color: Colors.black54,)
        ],
      ),
    );
  }
}
