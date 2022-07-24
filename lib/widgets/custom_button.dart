import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/colors.dart';

class CustomButton extends StatelessWidget {
  final onTap;
  final Widget iconWidget;
  final String text;
  final Color buttonColor;
  const CustomButton({
    Key? key,
    required this.onTap,
    required this.iconWidget,
    required this.text,
    required this.buttonColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 312.w,
        height: 50.h,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(6.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 13.sp,
                  color: Colour.white_color,
                  letterSpacing: 2.3
                ),
              ),
              iconWidget
            ],
          ),
        ),
      ),
    );
  }
}
