// ignore_for_file: unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/colors.dart';

class CustomRowImageDetails extends StatelessWidget {
  final image;
  final String title;
  final String sareeSize;
  final String sareeColor;
  final int quantity;
  const CustomRowImageDetails({
    required this.image,
    required this.title,
    required this.sareeSize,
    required this.sareeColor,
    required this.quantity,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 55.h,
          width: 57.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.r),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12.sp,
                color: Colour.black_color,
              ),
            ),
            Row(
              children: [
                Text(
                  sareeSize,
                  style: TextStyle(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w300,
                      color: Colour.black_color.withOpacity(.60)),
                ),
                SizedBox(width: 4.w),
                Container(
                  height: 10.h,
                  width: 1,
                  color: Colour.black_color.withOpacity(.60),
                ),
                SizedBox(width: 4.w),
                Text(
                  sareeColor,
                  style: TextStyle(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w300,
                      color: Colour.black_color.withOpacity(.60)),
                ),
              ],
            ),
          ],
        ),
        Text(
          "${quantity}",
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 11.sp),
        )
      ],
    );
  }
}
