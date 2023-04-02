import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:task1inflackltd/dimension.dart';
import 'package:task1inflackltd/widgets/ExamCard.dart';
import 'package:task1inflackltd/widgets/categoryCardDesign.dart';
import 'package:task1inflackltd/widgets/categroy_divisions.dart';
import 'package:task1inflackltd/widgets/classWorkCard.dart';
import 'package:task1inflackltd/widgets/heading_text.dart';
import 'package:task1inflackltd/widgets/smallText.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex=0;
  final DateTime today = DateTime.now();
  final List mainCategories = [
    'বিজ্ঞান',
    'গণিত',
    'ব্যবসায় শিক্ষা',
    'চারুপাঠ',
    'গার্হ্যস্থ বিজ্ঞান',
    'শারীরিক শিক্ষা'
  ];
  final List mainCategoryImages = [
    'assets/images/computerScience.png',
    'assets/images/equation.png',
    'assets/images/financial_guide.png',
    'assets/images/paper_crafts.png',
    'assets/images/laboratory.png',
    'assets/images/run.png',
  ];
  final List otherCategories = [
    'শ্রেণী কার্যক্রম',
    'গ্রেড শীট',
    'রুটিন',
  ];
  final List otherCategoryImages = [
    'assets/images/training.png',
    'assets/images/exam.png',
    'assets/images/calendar.png',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 30, left: 15, right: 15),
              height: 180,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [Color(0xDD1F8AB6), Color(0xFF26A6CD)]),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25))),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text('শুভ সকাল ',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: Dimensions.fontHeight5)),
                              Text(
                                'হাফিয নাকিব',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: Dimensions.fontHeight5),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text('ইস্কুল -',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: Dimensions.fontHeight10)),
                              Text('এ আপনাকে স্বাগতম',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: Dimensions.fontHeight10)),
                            ],
                          ),
                        ],
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/img.png'),
                        radius: 25,
                      )
                    ],
                  ),
                  DatePicker(
                    DateTime.now(),
                    dateTextStyle: TextStyle(
                        fontFamily: 'Noto Sans Bengali', color: Colors.white),
                    dayTextStyle: TextStyle(
                        fontFamily: 'Noto Sans Bengali', color: Colors.white),
                    monthTextStyle: TextStyle(
                        fontFamily: 'Noto Sans Bengali', color: Colors.white),
                    height: 80,
                    width: 70,
                    initialSelectedDate: DateTime.now(),
                    selectionColor: Colors.white,
                    selectedTextColor: Color(0xDD1F8AB6),
                    locale: "bn",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Dimensions.fontHeight20,
            ),
            CategoryDivisions(
                divisionHead: 'কোর্সসমূহ', divisiontail: 'সবগুলো দেখুন'),
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: mainCategories.length,
                itemBuilder: (BuildContext context, int index) =>
                    CustomCategoryCardDesign(
                        catCardText: mainCategories[index],
                        catCardImage: mainCategoryImages[index]),
              ),
            ),
            CategoryDivisions(
                divisionHead: 'অন্যান্য', divisiontail: 'সবগুলো দেখুন'),
            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: otherCategories.length,
                itemBuilder: (BuildContext context, int index) =>
                    CustomCategoryCardDesign(
                        catCardText: otherCategories[index],
                        catCardImage: otherCategoryImages[index]),
              ),
            ),
            CategoryDivisions(
                divisionHead: 'পরীক্ষাসমুহ', divisiontail: 'সবগুলো দেখুন'),
            ExamCard(subject: 'সাধারণ গণিত', headingImage: 'assets/images/equation.png', time: '১১ঃ৩০ - ১২ঃ০০', date1: '৭ আগস্ট', date2: 'সোম ৫', syllebus: '১৪, ১৫ (সরল অংক)', marks: '২০'),
            ExamCard(subject: 'জীব বিজ্ঞান', headingImage: 'assets/images/dna.png', time: '১২ঃ৩০ - ০১ঃ০০', date1: '৭ আগস্ট', date2: 'সোম ৫', syllebus: '১৪, ১৫ (সরল অংক)', marks: '২০'),
            Divider(color: Colors.grey,indent: 15,endIndent: 15,thickness: 1,),
            CategoryDivisions(
                divisionHead: 'শ্রেণী কার্যক্রম', divisiontail: 'সবগুলো দেখুন'),
            ClassWorkCard(subject: 'জীব বিজ্ঞান', headingImage: 'assets/images/dna.png', date1: '৭ আগস্ট', date2: ' সোম ৫', types: 'হোম ওয়ার্ক', chapter: 'কোষ বিভাজন', remarks: 'সৃজনশীল ১ - ৩'),
            ClassWorkCard(subject: 'পদার্থবিজ্ঞান', headingImage: 'assets/images/training.png', date1: '৭ আগস্ট', date2: ' সোম ৫', types: 'এসাইনমেন্ট', chapter: 'স্থির তড়িৎ', remarks: 'সৃজনশীল ১ - ৩'),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'মেনু'),
        BottomNavigationBarItem(icon: Image.asset('assets/images/inbox.png', height: 20, width: 20, ), label: 'ইনবক্স'),
        BottomNavigationBarItem(icon: Icon(Icons.space_dashboard_outlined), label: 'ড্যাশবোর্ড'),
        BottomNavigationBarItem(icon: Icon(Icons.person_outline_sharp,), label: 'প্রোফাইল'),
      ],
      currentIndex: _selectedIndex,
        selectedItemColor: Color(0xDD1F8AB6),
        onTap: _onItemTapped,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        selectedFontSize: Dimensions.fontHeight5,
      ),
    );
  }
}
