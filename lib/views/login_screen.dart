// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:poonolil_textiles_ui/routes.dart';

import '../constant/colors.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_icon_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'images/login.png',
                  ),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Image.asset('images/logo.png', width: 100.w, height: 220.h),
                ],
              ),
              Column(
                children: [
                  CustomButton(
                    onTap: () {},
                    iconWidget: Icon(
                      Icons.phone_android_outlined,
                      color: Colour.white_color,
                      size: 20,
                    ),
                    text: "PHONE NUMBER",
                    buttonColor: Colors.white.withOpacity(.20),
                  ),
                  SizedBox(height: 15.h),
                  CustomButton(
                    onTap: () => Get.toNamed(otpScreen),
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
                  SizedBox(
                    height: 30.h,
                  ),
                  Text(
                    "OR SIGN IN WITH",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 15.sp,
                        letterSpacing: 0.50),
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomIconButton(
                        onTap: null,
                        imageIcon:
                          Icons.apple_outlined,

                      ),
                      SizedBox(width: 10.w),
                      CustomIconButton(
                          onTap: null,
                          imageIcon: FontAwesomeIcons.google),
                      SizedBox(width: 10.w),
                      CustomIconButton(
                        onTap: null,
                        imageIcon: Icons.facebook_outlined,
                      ),
                    ],
                  ),
                  SizedBox(height: 50.h)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


