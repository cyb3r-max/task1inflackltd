import 'package:flutter/material.dart';
import 'package:task1inflackltd/widgets/smallText.dart';

import '../dimension.dart';
import 'heading_text.dart';

class ExamCard extends StatelessWidget {
  String subject, time, date1, date2, syllebus, marks, headingImage;
  ExamCard({required this.subject, required this.headingImage, required this.time, required this.date1, required this.date2, required this.syllebus, required this.marks, Key? key}) : super(key: key);

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
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/clock.png',
                                width: 10,
                                height: 10,
                                color: Color(0xDD1F8AB6),
                              ),
                              SmallText(
                                smallText: time,
                                smallTextSize: Dimensions.fontHeight5,
                                color: Colors.black45,
                              ),
                            ],
                          ),
                          SizedBox(width: Dimensions.width10,),
                          Row(
                            children: [
                              Icon(
                                Icons.calendar_today_rounded,
                                size: 15,
                                color: Color(0xDD1F8AB6),
                              ),
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
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      HeadingText(text: 'অধ্যায়ঃ ', size: Dimensions.fontHeight5, color: Color(0xDD1F8AB6),),
                      SmallText(smallText: syllebus, smallTextSize: Dimensions.fontHeight5)
                    ],
                  ),
                  Row(
                    children: [
                      HeadingText(text: 'পূর্ণমানঃ ', size: Dimensions.fontHeight5, color: Color(0xDD1F8AB6),),
                      SmallText(smallText: marks, smallTextSize: Dimensions.fontHeight5)
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
