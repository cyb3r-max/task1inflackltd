import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dimensions{
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;
  //height= 2160px/ 864px     width=1080px/ 432px

  static double width20=screenWidth/10;
  static double width80=screenWidth/8;
  static double width10=screenWidth/20;

  static double height15=screenHeight/144;
  static double height5=screenHeight/125;

  static double fontHeight35=screenHeight/20;
  static double fontHeight30=screenHeight/25;
  static double fontHeight20=screenHeight/30;
  static double fontHeight10=screenHeight/40;
  static double fontHeight5=screenHeight/50;
  static double fontHeight2=screenHeight/60;
}