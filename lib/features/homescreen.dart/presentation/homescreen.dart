import 'package:car_screens/Model/carsmodel.dart';
import 'package:car_screens/Model/horizontal_car.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFE5E5E5),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Container(
          margin: EdgeInsets.symmetric(horizontal: 14.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                "assets/images/Group.svg",
                // fit: BoxFit.contain,
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
      body: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 21.w),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    height: 60.h,
                    width: 276.w,
                    padding: EdgeInsets.symmetric(horizontal: 23.w),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Search for a car",
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                    fontSize: 14.sp,
                                    fontFamily: 'Poppins',
                                    color: Colors.black)),
                          ),
                        ),
                        SizedBox(
                            height: 24.h,
                            width: 24.w,
                            child: SvgPicture.asset("assets/images/search.svg"))
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 26.w,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    height: 60.h,
                    width: 70.w,
                    padding: EdgeInsets.symmetric(horizontal: 23.w),
                    child: SizedBox(
                        height: 24.h,
                        width: 24.w,
                        child:
                            SvgPicture.asset("assets/images/adjustments.svg")),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 152,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: horizontalCars.length,
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: 31.w, top: 22.h),
                    child: Stack(
                      children: [
                        Container(
                          height: 149,
                          width: 120,
                          decoration: BoxDecoration(
                              color: horizontalCars[index].bgcolors,
                              borderRadius: BorderRadius.circular(18)),
                          child: Padding(
                            padding: EdgeInsets.only(top: 120.h),
                            child: Column(
                              children: [
                                Text(
                                  horizontalCars[index].category.toString(),
                                  style: TextStyle(
                                      color: horizontalCars[index].textcolor,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  height: 6.h,
                                ),
                                Text(
                                  horizontalCars[index].des.toString(),
                                  style: TextStyle(
                                      color: horizontalCars[index].dexcolor,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: -30,
                          child: Image.asset(
                            horizontalCars[index].img.toString(),
                          ),
                        ),
                      ],
                      clipBehavior: Clip.none,
                    ),
                  );
                }),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 21.w, bottom: 40.h),
              child: Text(
                "Available vehicles",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 14.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Expanded(
              child: ListView.separated(
                // physics: ScrollPhysics(),
                // physics: NeverScrollableScrollPhysics(),
                itemCount: carList.length,
                shrinkWrap: true,
                itemBuilder: ((context, index) {
                  return Container(
                    margin: EdgeInsets.only(left: 30.w, right: 40.w),
                    // color: Colors.white,
                    height: 93.h,
                    width: 337.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          // color: Colors.green,
                          padding: EdgeInsets.all(3),
                          // color: Colors.green,
                          height: 126.h,
                          width: 105.w,

                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              carList[index].img.toString(),
                              fit: BoxFit.cover,
                            ),
                          ),

                          // child: Image.asset("assets/images/carpic.png"),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              carList[index].name.toString(),
                              style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff212121),
                              ),
                            ),
                            // SizedBox(height: 9.h),
                            Text(
                              carList[index].des.toString(),
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff212121)),
                            ),
                            Row(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      carList[index].amount.toString(),
                                      style: TextStyle(
                                        color: Color(0xff057A55),
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      " /month",
                                      style: TextStyle(
                                          color: Color(0xff7D8EA3),
                                          fontSize: 12.sp),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 100.w),
                                  child: Image.asset(
                                    "assets/images/arrow.png",
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  );
                }),
                separatorBuilder: (context, indexx) {
                  return Padding(
                    padding: EdgeInsets.only(
                        left: 37.w, right: 37, top: 8.h, bottom: 8.h),
                    child: const Divider(
                      thickness: 2,
                      color: Color(0xFFDBDBDB),
                    ),
                  );
                },
              ),
            )
          ]),
    );
  }
}
