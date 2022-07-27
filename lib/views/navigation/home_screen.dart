// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poonolil_textiles_ui/constant/colors.dart';

import '../../widgets/custom_circle_container.dart';
import '../../widgets/custom_home_page_best_selling_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 93.h,
        elevation: 0,
        backgroundColor: Colour.appBar_color,
        title: Image.asset(
          'images/logo.png',
          width: 100,
          height: 42,
          color: Colour.black_color,
        ),
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: Center(
            child: FaIcon(
              FontAwesomeIcons.bars,
              color: Colour.black_color,
            ),
          ),
        ),
        actions: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(right: 20.w),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Icon(
                    Icons.shopping_cart_outlined,
                    color: Colour.black_color,
                  ),
                  Positioned(
                    right: -3.w,
                    top: -4.h,
                    child: Container(
                      height: 12.h,
                      width: 12.w,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(180.r),
                      ),
                      child: Center(
                          child: Text(
                        "1",
                        style: TextStyle(color: Colors.white, fontSize: 8.sp),
                      )),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.topLeft,
              colors: Colour.gradient,
            ),
            borderRadius: BorderRadius.circular(15.r),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 550,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/home.png'), fit: BoxFit.cover),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "lorem ipsum",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 10.sp,
                        color: Colour.white_color,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      "REDIFINING",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 28.sp,
                        color: Colour.white_color,
                        letterSpacing: 1,
                      ),
                    ),
                    Text(
                      "BEAUTY",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 28.sp,
                        color: Colour.white_color,
                        letterSpacing: 1,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      "Tellus vel lobortis neque, urna, quisque",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                        color: Colour.white_color.withOpacity(.60),
                        letterSpacing: 1,
                      ),
                    ),
                    Text(
                      "tempor pellentesque ac volutpat",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                        color: Colour.white_color.withOpacity(.60),
                        letterSpacing: 1,
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      height: 49.h,
                      width: 314.w,
                      decoration: BoxDecoration(
                        color: Colour.white_color.withOpacity(.20),
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 18.w),
                          child: Text(
                            "GO TO COLLECTION",
                            style: TextStyle(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400,
                              color: Colour.white_color,
                              letterSpacing: 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 60.h),
                  ],
                ),
              ),
              SizedBox(height: 31.h),
              Padding(
                padding: EdgeInsets.only(left: 15.w),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Shop By Category",
                        style: TextStyle(
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF170906),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    SizedBox(
                      height: 105.h,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          CustomCircleContainer(
                            image: 'images/silk.png',
                            text: "SILK",
                          ),
                          SizedBox(width: 12.h),
                          CustomCircleContainer(
                            image: 'images/silk_2.png',
                            text: "SILK COTTON",
                          ),
                          SizedBox(width: 12.h),
                          CustomCircleContainer(
                            image: 'images/silk_3.png',
                            text: "COTTON",
                          ),
                          SizedBox(width: 12.h),
                          CustomCircleContainer(
                            image: 'images/silk.png',
                            text: "WORK",
                          ),
                          SizedBox(width: 12.h),
                          CustomCircleContainer(
                            image: 'images/silk_2.png',
                            text: "COTTON",
                          ),
                          SizedBox(width: 12.h),
                          CustomCircleContainer(
                            image: 'images/silk.png',
                            text: "SILK",
                          ),
                          SizedBox(width: 5.h),
                        ],
                      ),
                    ),
                    SizedBox(height: 34.h),
                    Container(
                      height: 353.h,
                      width: 312.w,
                      decoration: BoxDecoration(
                        color: Color(0xFFB9ACA8).withOpacity(.30),
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.asset(
                            'images/img_1.png',
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            bottom: 0,
                            child: Container(
                              height: 93.h,
                              width: 312.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(15.r),
                                  bottomLeft: Radius.circular(15.r),
                                ),
                                color: Color(0xFFB9ACA8),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Bridal Collection",
                                      style: TextStyle(
                                          fontSize: 23.sp,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(height: 5.h),
                                    Text(
                                      "Tellus vel lobortis neque, urna, quisque\ntempor pellentesque ac volutpat",
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Best Sellers",
                        style: TextStyle(
                            fontSize: 22.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(height: 25),
                    SizedBox(
                      height: 335,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          CustomHomePageBestSellingContainer(
                            image: 'images/img_3.png',
                            title: "Black Satin Saree",
                            amount: "BDT 2000",
                          ),
                          SizedBox(width: 20.w),
                          CustomHomePageBestSellingContainer(
                            image: 'images/img_4.png',
                            title: "Dhakai Benarasi",
                            amount: "BDT 9000",
                          ),
                          SizedBox(width: 20.w),
                          CustomHomePageBestSellingContainer(
                            image: 'images/img_6.png',
                            title: "Silk Saree",
                            amount: "BDT 12000",
                          ),
                          SizedBox(width: 20.w),
                          CustomHomePageBestSellingContainer(
                            image: 'images/img_3.png',
                            title: "Katan Saree",
                            amount: "BDT 5000",
                          ),
                          SizedBox(width: 20.w),
                          CustomHomePageBestSellingContainer(
                            image: 'images/img_4.png',
                            title: "Tangail Handloom Saree",
                            amount: "BDT 7500",
                          ),
                          SizedBox(width: 10.w),
                        ],
                      ),
                    ),
                    SizedBox(height: 50)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
