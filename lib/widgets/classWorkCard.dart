import 'package:flutter/material.dart';
import 'package:task1inflackltd/widgets/smallText.dart';

import '../dimension.dart';
import 'heading_text.dart';

class ClassWorkCard extends StatelessWidget {
  String subject, date1, date2, types, chapter, remarks, headingImage;
  ClassWorkCard({required this.subject, required this.headingImage, required this.date1,required this.date2, required this.types, required this.chapter, required this.remarks, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      alignment: Alignment.center,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(horizontal: 25),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    headingImage,
                    width: 30,
                    height: 30,
                  ),
                  SizedBox(width: Dimensions.width10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SmallText(smallText: subject, smallTextSize: Dimensions.fontHeight5, color: Color(0xDD1F8AB6), isBold: true,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.calendar_today_rounded,
                            size: 15,
                            color: Colors.blue,
                          ),
                          SizedBox(width: 10,),
                          SmallText(
                            smallText: date1,
                            smallTextSize: Dimensions.fontHeight5,
                            color: Colors.black45,
                          ),
                        ],
                      ),

                    ],
                  )
                ],
              ),
              SmallText(
                  smallText: date2,
                  smallTextSize: Dimensions.fontHeight5,
                  color: Colors.black45),
            ],
          ),
          Divider(color: Colors.grey,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      HeadingText(text: 'ধরণঃ ', size: Dimensions.fontHeight5, color: Color(0xDD1F8AB6),),
                      SmallText(smallText: types, smallTextSize: Dimensions.fontHeight5)
                    ],
                  ),
                  Row(
                    children: [
                      HeadingText(text: 'অধ্যায়ঃ ', size: Dimensions.fontHeight5, color: Color(0xDD1F8AB6),),
                      SmallText(smallText: chapter, smallTextSize: Dimensions.fontHeight5)
                    ],
                  ),
                  Row(
                    children: [
                      HeadingText(text: 'মন্তব্যঃ ', size: Dimensions.fontHeight5, color: Color(0xDD1F8AB6),),
                      SmallText(smallText: remarks, smallTextSize: Dimensions.fontHeight5)
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
