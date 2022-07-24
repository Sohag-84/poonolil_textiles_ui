import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomIconButton extends StatelessWidget {
  final onTap;
  final IconData imageIcon;
  const CustomIconButton(
      {Key? key, required this.onTap, required this.imageIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 43.h,
        width: 43.w,
        decoration: BoxDecoration(
            color: Color(0xFFFAF6F1).withOpacity(0.20),
            borderRadius: BorderRadius.circular(180.r)),
        child: Icon(imageIcon,color: Colors.white,size: 28.h,),
      ),
    );
  }
}