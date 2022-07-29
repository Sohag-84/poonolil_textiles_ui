// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDeliveredContainer extends StatelessWidget {
  final double perPrice;
  final double taka;
  final String date;
  const CustomDeliveredContainer({
    Key? key,
    required this.perPrice,
    required this.taka,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 312.w,
      height: 85.h,
      color: Color(0xFF3EA82C).withOpacity(.20),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.pages_outlined,
                      color: Color(0xFF3EA82C).withOpacity(.40),
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      "DELIVERED",
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF3EA82C),
                      ),
                    ),
                  ],
                ),
                Text(
                  "$perPrice",
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "BDT $taka",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(height: 5.h),
                Text(
                  date,
                  style: TextStyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
