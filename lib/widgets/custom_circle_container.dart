// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/colors.dart';

class CustomCircleContainer extends StatelessWidget {
  final image;
  final String text;
  const CustomCircleContainer({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 84.h,
          width: 81.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(180.r),
          ),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 7.h),
        Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 11.sp,
              color: Colour.black_color),
        ),
      ],
    );
  }
}
