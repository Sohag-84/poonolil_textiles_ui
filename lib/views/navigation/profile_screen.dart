// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:poonolil_textiles_ui/constant/colors.dart';
import 'package:poonolil_textiles_ui/routes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: Colour.gradient)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40.h),
                Padding(
                  padding: EdgeInsets.only(left: 28.w, right: 28.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi 👋",
                        style: TextStyle(
                            fontSize: 18.sp, fontWeight: FontWeight.w300),
                      ),
                      Text(
                        "INJAMUL HAQ SOHAG",
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 3,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        "01316-255373",
                        style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                            color: Colour.black_color.withOpacity(.50)),
                      ),
                      SizedBox(height: 10.h),
                      Padding(
                        padding: EdgeInsets.only(right: 40.w),
                        child: Container(
                          height: 2.h,
                          width: 375.w,
                          color: Colors.black.withOpacity(.15),
                        ),
                      ),
                      SizedBox(height: 32.h),
                      Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: Row(
                          children: [
                            Text(
                              "349",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 28.sp,
                                color: Colour.primary_color,
                              ),
                            ),
                            SizedBox(width: 5.w),
                            Text(
                              "Points",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 11.sp,
                                color: Colour.black_color.withOpacity(.50),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: Container(
                          height: 3.h,
                          width: 300.w,
                          color: Colour.primary_color,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15.h),
                Padding(
                  padding: EdgeInsets.only(right: 40.w),
                  child: Center(
                    child: Text(
                      "Tellus Vel Lobortis Neque, Urna, Quisque\nTempor Pellentesque Ac Volutpat",
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w300,
                        color: Colour.black_color.withOpacity(.60),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15.h),
                modalBottomSheet(context),
                SizedBox(height: 12.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Column(
                    children: [
                      ExpansionTile(
                        title: Text(
                          "MY ACCOUNT",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13.sp,
                            color: Colors.black,
                          ),
                        ),
                        leading: Icon(
                          Icons.person_outline,
                          color: Colors.black,
                        ),
                        trailing: Image.asset(
                          'images/arrow.png',
                          width: 20.w,
                          height: 20.h,
                        ),
                        children: [
                          buildListTile(title: "Personal Details"),
                          buildListTile(title: "Refunds"),
                          buildListTile(title: "Payment Settings"),
                          buildListTile(title: "Reviews"),
                          buildListTile(title: "Change Password"),
                          buildListTile(title: "Delete Account"),
                        ],
                      ),
                      ExpansionTile(
                        title: Text(
                          "POONOLIL LUX",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13.sp,
                            color: Colors.black,
                          ),
                        ),
                        leading: Icon(
                          Icons.account_balance_wallet_outlined,
                          color: Colors.black,
                        ),
                        trailing: Image.asset(
                          'images/arrow.png',
                          width: 20.w,
                          height: 20.h,
                        ),
                        children: [
                          buildListTile(title: "Points History"),
                          buildListTile(title: "Claimed Points"),
                          buildListTile(title: "Membership Information"),
                        ],
                      ),
                      SizedBox(height: 20.h),
                      Container(
                        width: 314.w,
                        height: 1,
                        color: Colors.black.withOpacity(.40),
                      ),
                      SizedBox(height: 20.h),
                      customListTile(
                        onTap: () => Get.toNamed(addressScreen),
                        leadingIcon: Icons.location_city_outlined,
                        title: "ADDRESS",
                      ),
                      customListTile(
                        onTap: () => Get.toNamed(orderScreen),
                        leadingIcon: Icons.cake_outlined,
                        title: "ORDERS",
                      ),
                      customListTile(
                        onTap: null,
                        leadingIcon: Icons.favorite_outline,
                        title: "WISHLIST",
                      ),
                      SizedBox(height: 20.h),
                      Container(
                        width: 314.w,
                        height: 1,
                        color: Colors.black.withOpacity(.40),
                      ),
                      SizedBox(height: 20.h),
                      customListTile(
                        onTap: null,
                        leadingIcon: FontAwesomeIcons.circleExclamation,
                        title: "FAQ",
                      ),
                      customListTile(
                        onTap: null,
                        leadingIcon: Icons.headset_mic_outlined,
                        title: "HELP CENTER",
                      ),
                      customListTile(
                        onTap: null,
                        leadingIcon: Icons.settings_outlined,
                        title: "SETTINGS",
                      ),
                      SizedBox(height: 20.h),
                      Container(
                        width: 314.w,
                        height: 1,
                        color: Colors.black.withOpacity(.40),
                      ),
                      SizedBox(height: 35.h),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Terms Of Service",
                        style: TextStyle(
                            fontSize: 10.sp, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 6.h),
                      Text(
                        "Sales Policy",
                        style: TextStyle(
                            fontSize: 10.sp, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 6.h),
                      Text(
                        "Privacy Policy",
                        style: TextStyle(
                            fontSize: 10.sp, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 6.h),
                      Text(
                        "Return And Refund Policy",
                        style: TextStyle(
                            fontSize: 10.sp, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 40.h),
                      Image.asset(
                        'images/logo.png',
                        width: 45.w,
                        height: 32.h,
                        color: Colour.black_color,
                      ),
                      Text(
                        "© 2021 poonolil inc.\nAll Rights Reserved.",
                        style: TextStyle(
                          fontSize: 9.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.h),
              ],
            ),
          ),
        ),
      ),
    );
  }

  ListTile customListTile(
      {required onTap, required leadingIcon, required title}) {
    return ListTile(
      onTap: onTap,
      leading: Icon(
        leadingIcon,
        color: Colors.black,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 13.sp,
          color: Colors.black,
        ),
      ),
      trailing: Image.asset(
        'images/arrow.png',
        height: 20.h,
        width: 20.h,
      ),
    );
  }

  ListTile buildListTile({required String title}) {
    return ListTile(
      contentPadding: EdgeInsets.only(left: 50.w),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 11.sp,
          fontWeight: FontWeight.w400,
          color: Colors.black.withOpacity(.60),
        ),
      ),
    );
  }

  Center modalBottomSheet(BuildContext context) {
    return Center(
      child: buildContainerButton(
        onTap: () {
          showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            context: context,
            builder: (_) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Container(
                  height: 570.h,
                  width: 361.w,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: Colour.gradient,
                    ),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15.r),
                      topLeft: Radius.circular(15.r),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 151.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.r),
                            topRight: Radius.circular(15.r),
                          ),
                          image: DecorationImage(
                            image: AssetImage('images/img_15.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Image.asset(
                        'images/qrcode.png',
                        height: 200.h,
                        width: 200.h,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        "ID : 17201623",
                        style: TextStyle(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(height: 60.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "MEMBER NAME",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 13.sp,
                              ),
                            ),
                            Text(
                              "Injamul Haq Sohag",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 11.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "POINTS",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 13.sp,
                              ),
                            ),
                            Text(
                              "359",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 11.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30.h),
                      buildContainerButton(
                          onTap: () => Get.back(),
                          text: 'CLOSE',
                          icon: Icon(Icons.close))
                    ],
                  ),
                ),
              );
            },
          );
        },
        text: 'VIEW MEMBER ID',
        icon: Icon(
          Icons.pages_outlined,
          color: Color(0xFF231F20).withOpacity(.50),
        ),
      ),
    );
  }

  static InkWell buildContainerButton(
      {required final onTap, required text, required icon}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 49.h,
        width: 256.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.r),
          border: Border.all(
            color: Colour.primary_color,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 13.sp,
                color: Colour.primary_color,
              ),
            ),
            SizedBox(width: 5.w),
            icon,
          ],
        ),
      ),
    );
  }
}
