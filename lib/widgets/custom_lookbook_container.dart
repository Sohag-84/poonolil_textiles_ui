// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/colors.dart';

class CustomLookBooksContainer extends StatelessWidget {
  final String image;
  final String title;
  final String desription;
  const CustomLookBooksContainer({
    super.key,
    required this.image,
    required this.title,
    required this.desription,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 353.h,
      width: 266.w,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(15.r),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 84.h,
            width: 312.w,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: const [
                  Color(0xFF979192),
                  Color(0xFF9B9595),
                  Color(0xFFBBB3B0),
                  Color(0xFFA59997),
                  Color(0xFFBCA798),
                ],
              ),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(15.r),
                bottomLeft: Radius.circular(15.r),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 17.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 23.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 3.h),
                  Text(
                    desription,
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 12.sp,
                      color: Colour.black_color.withOpacity(.60),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
