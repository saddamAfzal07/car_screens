import 'package:car_screens/Model/detail_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  // String image = "assets/images/svgdet.svg";
  String image = "assets/images/detcar1.png";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  physics: ScrollPhysics(),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            // color: Colors.green,
                            width: double.infinity,
                            height: 250.h,
                            child: SizedBox(
                              child:

                              Image.asset(

                                  image,
                                  fit: BoxFit.fill,
                              ),


                              // SvgPicture.asset(
                              //   image,
                              //   fit: BoxFit.fill,
                              // ),

                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        SizedBox(
                          height: 92.h,
                          // width: 83.w,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: detailCarList.length,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      image =
                                          detailCarList[index].img.toString();
                                    });
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 21.w),
                                      child: SizedBox(
                                        height: 91.h,
                                        // width: 93.w,
                                        child:
                                        Image.asset(
                                          detailCarList[index].img.toString(),
                                            width: 66.w,
                                            height: 66.h,
                                            fit: BoxFit.contain,
                                        ),


                                        // SvgPicture.asset(
                                        //   detailCarList[index].img.toString(),
                                        //   width: 66.w,
                                        //   height: 66.h,
                                        //   fit: BoxFit.contain,
                                        // ),
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        ),
                        const Divider(
                          thickness: 1,
                          color: Color(0xFFDBDBDB),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 21.h, bottom: 15.h, left: 21.w),
                          child: Text(
                            "Toyota Camry iA",
                            style: TextStyle(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff212121),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 21.w),
                          child: Row(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "\$350",
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
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 22, bottom: 32),
                          child: Divider(
                            thickness: 1,
                            color: Color(0xFFDBDBDB),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 21.w),
                          child: Text(
                            "Car Specifications",
                            style: TextStyle(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff212121),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 21.w, right: 21.w, top: 28.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                color: Colors.white,
                                // alignment: Alignment.centerLeft,
                                width: 173.w,
                                height: 89.h,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 16.w),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Make",
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff6B7280),
                                            ),
                                          )),
                                      Text(
                                        "TOYOTA CAMRY",
                                        style: TextStyle(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff212121),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                color: Colors.white,
                                // alignment: Alignment.centerLeft,
                                width: 173.w,
                                height: 89.h,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 16.w),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Model",
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff6B7280),
                                            ),
                                          )),
                                      Text(
                                        "1350v91",
                                        style: TextStyle(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff212121),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 21.w, right: 21.w, top: 28.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                color: Colors.white,
                                // alignment: Alignment.centerLeft,
                                width: 173.w,
                                height: 89.h,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 16.w),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "YEAR",
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff6B7280),
                                            ),
                                          )),
                                      Text(
                                        "2018",
                                        style: TextStyle(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff212121),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                color: Colors.white,
                                // alignment: Alignment.centerLeft,
                                width: 173.w,
                                height: 89.h,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 16.w),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "MILEAGE",
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff6B7280),
                                            ),
                                          )),
                                      Text(
                                        "1350v91",
                                        style: TextStyle(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff212121),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 21.w, right: 21.w, top: 28.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                color: Colors.white,
                                // alignment: Alignment.centerLeft,
                                width: 173.w,
                                height: 89.h,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 16.w),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "TRANSMISSION",
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff6B7280),
                                            ),
                                          )),
                                      Text(
                                        "AUTOMATIC",
                                        style: TextStyle(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff212121),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                color: Colors.white,
                                // alignment: Alignment.centerLeft,
                                width: 173.w,
                                height: 89.h,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 16.w),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "COLOR",
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff6B7280),
                                            ),
                                          )),
                                      Row(
                                        children: [
                                          Container(
                                            width: 15,
                                            height: 15,
                                            color: Colors.green,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "1350v91",
                                            style: TextStyle(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xff212121),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 21.w, right: 21.w, top: 28.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                color: Colors.white,
                                // alignment: Alignment.centerLeft,
                                width: 173.w,
                                height: 89.h,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 16.w),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "No of DOORS",
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff6B7280),
                                            ),
                                          )),
                                      Text(
                                        "4 DOORS",
                                        style: TextStyle(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff212121),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color(0XFF057A55),
                      borderRadius: BorderRadius.circular(10)),
                  margin: EdgeInsets.only(left: 21.w, right: 21.w, top: 37.h),
                  height: 60,
                  width: double.infinity,
                  child: Text(
                    "Rent this Car",
                    style: TextStyle(
                        fontSize: 17.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
