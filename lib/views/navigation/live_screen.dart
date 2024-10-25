// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant/colors.dart';

class LiveScreen extends StatelessWidget {
  const LiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 93.h,
        elevation: 0,
        backgroundColor: Colour.appBar_color,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: const [
                Color(0xFF94969C),
                Color(0xFFADABAF),
                Color(0xFFB3A9A1),
                Color(0xFF878A8F),
              ],
            ),
          ),
        ),
        title: Text(
          "Live",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: Center(
            child: Icon(
              Icons.arrow_back_outlined,
              color: Colors.black,
              size: 25,
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
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/img_10.png'), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Black Satin Saree",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 22.sp,
                color: Colour.white_color,
              ),
            ),
            SizedBox(height: 6.h),
            Text(
              'Tellus Vel Lobortis Neque, Urna,Quisque',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 12.sp,
                color: Colour.white_color.withOpacity(.60),
              ),
            ),
            Text(
              'Tempor Pellentesque Ac Volutpat',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 12.sp,
                color: Colour.white_color.withOpacity(.60),
              ),
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: null,
                  child: Container(
                    height: 49.h,
                    width: 257.w,
                    decoration: BoxDecoration(
                      color: Color(0xFFD2C5BE).withOpacity(.60),
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 18.w),
                        child: Text(
                          "GO TO PRODUCT",
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
                ),
                SizedBox(width: 15.w),
                Icon(
                  Icons.favorite_outline,
                  color: Colour.white_color,
                ),
              ],
            ),
            SizedBox(height: 36.h),
          ],
        ),
      ),
    );
  }
}
