// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/colors.dart';

class CustomHomePageBestSellingContainer extends StatelessWidget {
  final image;
  final String title;
  final String amount;
  const CustomHomePageBestSellingContainer({
    Key? key,
    required this.image,
    required this.title,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 353.h,
      width: 256.w,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(15.r),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 93,
                width: 256,
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Container(
                      height: 1,
                      width: 102,
                      color: Colors.black.withOpacity(.64),
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          amount,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20.sp,
                          ),
                        ),
                        SizedBox(width: 11.w),
                        Container(
                          height: 20.h,
                          width: 2.w,
                          color: Colour.black_color.withOpacity(.50),
                        ),
                        SizedBox(width: 11.w),
                        Text(
                          "add to cart",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13.sp,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: -15,
                right: 12,
                child: Container(
                  height: 38.h,
                  width: 38.h,
                  decoration: BoxDecoration(
                    color: Color(0xffCCA27F),
                    borderRadius: BorderRadius.circular(180),
                  ),
                  child: Icon(
                    Icons.favorite_outline,
                    size: 18.h,
                    color: Colour.white_color,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
