import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/colors.dart';

class CustomCircleContainer extends StatelessWidget {
  final String image;
  final String text;
  const CustomCircleContainer({
    super.key,
    required this.image,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80.h,
          width: 80.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 7.h),
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 11.sp,
            color: Colour.black_color,
          ),
        ),
      ],
    );
  }
}
