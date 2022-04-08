import 'package:car_screens/features/details_screen.dart/presentation/details_screen.dart';
import 'package:car_screens/features/homescreen.dart/presentation/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int myindex = 0;
  List<Widget> widgetList = [
    const HomeScreen(),
    const DetailsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Container(
          // margin: EdgeInsets.symmetric(horizontal: 14.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 92.w,
                height: 23.h,
                child: SvgPicture.asset(
                  "assets/images/Group.svg",
                  fit: BoxFit.contain,
                ),
              ),
              Text(
                "Home",
                style: TextStyle(
                  fontSize: 18.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/images/notification.svg",
                  ),
                  SizedBox(
                    width: 28.w,
                  ),
                  Image.asset("assets/images/Ellipse.png"),
                ],
              )
            ],
          ),
        ),
      ),
      body: widgetList[myindex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.green,
          onTap: (index) {
            setState(() {
              myindex = index;
            });
          },
          currentIndex: myindex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Hires",
            ),
          ]),
    );
  }
}
