// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:poonolil_textiles_ui/constant/colors.dart';
import 'package:poonolil_textiles_ui/routes.dart';

import '../widgets/custom_button.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: Colour.gradient,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 37.w),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 70.h),
                  Center(
                    child: Image.asset(
                      'images/logo.png',
                      color: Colors.black.withOpacity(.90),
                    ),
                  ),
                  SizedBox(height: 37.h),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome Back 👋",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18.sp,
                              color: Colour.black_color,
                            ),
                          ),
                          SizedBox(height: 3.h),
                          Text(
                            "Balendu Divakar",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18.sp,
                                color: Colour.black_color,
                                letterSpacing: 3),
                          ),
                          SizedBox(height: 3.h),
                          Text(
                            "+91 7012161008",
                            style: TextStyle(
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w400,
                              color: Colour.black_color.withOpacity(.50),
                            ),
                          ),
                          SizedBox(height: 72.h),
                          Text(
                            "Enter in the oTP",
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colour.black_color.withOpacity(.60),
                              fontSize: 12.sp,
                            ),
                          ),
                          SizedBox(height: 13.h),
                          Row(
                            children: [
                              buildContainer(),
                              SizedBox(width: 7.w),
                              buildContainer(),
                              SizedBox(width: 7.w),
                              buildContainer(),
                              SizedBox(width: 7.w),
                              buildContainer(),
                            ],
                          ),
                          SizedBox(height: 30.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Didn't Get the OTP ?",
                                style: TextStyle(
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colour.black_color.withOpacity(.60),
                                ),
                              ),
                              SizedBox(width: 4.w,),
                              Text(
                                "SEND IT AGAIN",
                                style: TextStyle(
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colour.primary_color,
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ],
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      //crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CustomButton(
                          onTap: () => Get.toNamed(navigationScreen),
                          iconWidget: Image.asset(
                            'images/arrow.png',
                            height: 20,
                            width: 20,
                            fit: BoxFit.cover,
                            color: Colour.secondary_color,
                          ),
                          text: "CONTINUE",
                          buttonColor: Colour.primary_color,
                        ),
                        SizedBox(height: 37.h)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container buildContainer() {
    return Container(
      height: 72.h,
      width: 67.w,
      decoration: BoxDecoration(
        color: Color(0xFF96351E).withOpacity(.20),
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 10.w, right: 10.w),
        child: TextFormField(),
      ),
    );
  }
}
