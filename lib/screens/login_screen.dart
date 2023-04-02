import 'package:flutter/material.dart';
import 'package:google_language_fonts/google_language_fonts.dart';
import 'package:get/get.dart';
import 'package:task1inflackltd/screens/home_screen.dart';
import '../dimension.dart';
import '../widgets/custom_input_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.arrow_back_ios_new),
              ],
            ),
            Image.asset(
              'assets/images/signInImage-removebg.png',
              height: 280,
            ),
            Center(
              child: Text(
                'সাইন ইন',
                style: BengaliFonts.balooDa(
                    color:  Color(0xFF3FB8E0), fontSize: Dimensions.fontHeight35),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: Dimensions.height15, horizontal: Dimensions.width20),
              child: CustomInputText(inputText: 'ফোন নাম্বার',isNumber: true)
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: Dimensions.height15, horizontal: Dimensions.width20),
              child: CustomInputText(inputText: 'পাসওয়ার্ড', isPassword: true,)
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.width20, vertical: 0),
              child: Row(
                children: const [
                  Text('পাসওয়ার্ড ভুলে গিয়েছেন? '),
                  Text(
                    'এখানে ক্লিক করুন',
                    style: TextStyle(color:Color(0xFF239AC4), decoration: TextDecoration.underline),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 70, vertical: 40 ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: ()=>Get.to(HomeScreen()),
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: Dimensions.height15, horizontal: Dimensions.width80),
                      decoration: BoxDecoration(color: Color(0xFF239AC4), borderRadius: BorderRadius.circular(15)),
                      child: Text(
                        'প্রবেশ করুন',
                        style: TextStyle(color: Colors.white, fontSize: Dimensions.fontHeight20), textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(height: Dimensions.height5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      Text('নতুন নিবন্ধনের জন্য '),
                      Text(
                        'এখানে ক্লিক করুন',
                        style: TextStyle(color: Color(0xFF239AC4), decoration: TextDecoration.underline),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
