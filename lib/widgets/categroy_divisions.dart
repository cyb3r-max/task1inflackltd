import 'package:flutter/material.dart';
import 'package:task1inflackltd/widgets/smallText.dart';

import '../dimension.dart';
import 'heading_text.dart';

class CategoryDivisions extends StatelessWidget {
  String divisionHead, divisiontail;
  CategoryDivisions({required this.divisionHead, required this.divisiontail, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
            vertical: Dimensions.height15,
            horizontal: Dimensions.width10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HeadingText(
              text: divisionHead,
              size: Dimensions.fontHeight30,
              color: Color(0xDD1F8AB6),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SmallText(
                    smallText: divisiontail,
                    smallTextSize: Dimensions.fontHeight5,
                    color: Color(0xDD1F8AB6),
                    isBold: true),
                Icon(
                  Icons.arrow_forward_outlined,
                  size: Dimensions.fontHeight5,
                  color: Color(0xDD1F8AB6),
                )
              ],
            )
          ],
        ));
  }
}
