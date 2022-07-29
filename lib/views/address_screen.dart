// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:poonolil_textiles_ui/constant/colors.dart';
import 'package:poonolil_textiles_ui/views/navigation/profile_screen.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90.h,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back_outlined),
          color: Colors.black,
        ),
        title: Text(
          "Address",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 18.sp,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        decoration:
            BoxDecoration(gradient: LinearGradient(colors: Colour.gradient)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 28.w, right: 18.w, top: 40.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Angamaly Home",
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(width: 5.w),
                              Container(
                                width: 61.w,
                                height: 21.h,
                                decoration: BoxDecoration(
                                    color: Colour.primary_color,
                                    borderRadius:
                                        BorderRadius.circular(10.5.r)),
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10.w),
                                  child: Center(
                                    child: Text(
                                      "Default",
                                      style: TextStyle(
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w300,
                                        color: Colour.white_color,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            "K Homes, SNDP Junction, Angamaly PO,\n683572, India",
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 12.sp,
                              color: Colour.black_color.withOpacity(.60),
                            ),
                          ),
                        ],
                      ),
                      Icon(Icons.delete_outline)
                    ],
                  ),
                  SizedBox(height: 40.h),
                  Container(
                    height: 1,
                    width: 314.w,
                    color: Colors.black.withOpacity(.15),
                  ),
                  SizedBox(height: 40.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Angamaly Home",
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            "K Homes, SNDP Junction, Angamaly PO,\n683572, India",
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 12.sp,
                              color: Colour.black_color.withOpacity(.60),
                            ),
                          ),
                        ],
                      ),
                      Icon(Icons.delete_outline)
                    ],
                  ),
                  SizedBox(height: 40.h),
                  Container(
                    height: 1,
                    width: 314.w,
                    color: Colors.black.withOpacity(.15),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ProfileScreen.buildContainerButton(
                      onTap: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          context: context,
                          builder: (context) {
                            return Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              child: Container(
                                height: 729.h,
                                decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(.90),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(15.r),
                                      topLeft: Radius.circular(15.r),
                                    )),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 20.h),
                                      Center(
                                        child: Container(
                                          width: 50.w,
                                          height: 2,
                                          color: Colour.primary_color,
                                        ),
                                      ),
                                      SizedBox(height: 12.h),
                                      Text(
                                        "Add New Address",
                                        style: TextStyle(
                                          fontSize: 22.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Colour.primary_color,
                                        ),
                                      ),
                                      SizedBox(height: 13.h),
                                      Center(
                                        child: Container(
                                          width: 314.w,
                                          height: 2,
                                          color:
                                              Color(0xFF231F20).withOpacity(.5),
                                        ),
                                      ),
                                      SizedBox(height: 27.h),
                                      buildTextFormField(
                                          hintText: "CUSTOMER NAME"),
                                      SizedBox(height: 10.h),
                                      buildTextFormField(hintText: "ADDRESS"),
                                      SizedBox(height: 13.h),
                                      buildTextFormField(
                                          hintText: "PHONE NUMBER"),
                                      SizedBox(height: 13.h),
                                      buildTextFormField(
                                          hintText: "STREET ADDRESS"),
                                      SizedBox(height: 13.h),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          buildTextFormFieldTwo(
                                              hintText: "DISTRICT"),
                                          buildTextFormFieldTwo(
                                              hintText: "STATE"),
                                        ],
                                      ),
                                      SizedBox(height: 13.h),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          buildTextFormFieldTwo(
                                              hintText: "PIN CODE"),
                                          buildTextFormFieldTwo(
                                              hintText: "COUNTRY"),
                                        ],
                                      ),
                                      SizedBox(height: 9.h),
                                      Text(
                                        "This Address Is My",
                                        style: TextStyle(
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                      SizedBox(height: 13.h),
                                      Row(
                                        children: [
                                          Container(
                                            height: 25.h,
                                            width: 57.w,
                                            decoration: BoxDecoration(
                                              color: Colour.secondary_color,
                                              borderRadius:
                                                  BorderRadius.circular(14.r),
                                            ),
                                            child: Center(
                                              child: Text(
                                                "Home",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 11.sp,
                                                  color: Colour.black_color,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5.w,
                                          ),
                                          Container(
                                            height: 25.h,
                                            width: 57.w,
                                            decoration: BoxDecoration(
                                              color: Colour.secondary_color,
                                              borderRadius:
                                                  BorderRadius.circular(14.r),
                                            ),
                                            child: Center(
                                              child: Text(
                                                "Work",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 11.sp,
                                                  color: Colour.black_color,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 13.h),
                                      Row(
                                        children: [
                                          Container(
                                            height: 22.h,
                                            width: 22.w,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFDBB98F)
                                                  .withOpacity(.37),
                                              borderRadius:
                                                  BorderRadius.circular(180.r),
                                            ),
                                          ),
                                          SizedBox(width: 5.w),
                                          Text(
                                            'Make This My Default Address',
                                            style: TextStyle(
                                              fontSize: 11.sp,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 13.h),
                                      Container(
                                        height: 49.h,
                                        width: 310.w,
                                        decoration: BoxDecoration(
                                            color: Colour.primary_color,
                                            borderRadius:
                                                BorderRadius.circular(6.r)),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 15.w),
                                            child: Text(
                                              "ADD ADDRESS",
                                              style: TextStyle(
                                                  fontSize: 13.sp,
                                                  fontWeight: FontWeight.w300,
                                                  color: Colour.white_color),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 15.h),
                                      InkWell(
                                        onTap: () => Get.back(),
                                        child: Center(
                                          child: Text(
                                            "Cancel",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 13.sp,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                      text: 'ADD NEW ADDRESS',
                      icon: Icon(Icons.location_on_outlined))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextFormField buildTextFormField({required hintText}) {
    return TextFormField(
      style: TextStyle(color: Colour.primary_color),
      decoration: InputDecoration(
          hintText: hintText,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFDBB98F).withOpacity(.40),
            ),
          ),
          hintStyle: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 13.sp,
            color: Colour.primary_color,
          ),
          fillColor: Color(0xFFDBB98F).withOpacity(.10),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.r),
          )),
    );
  }

  SizedBox buildTextFormFieldTwo({required hintText}) {
    return SizedBox(
      width: 152.w,
      height: 45,
      child: Center(
        child: TextFormField(
          style: TextStyle(color: Colour.primary_color),
          decoration: InputDecoration(
              hintText: hintText,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFDBB98F).withOpacity(.40),
                ),
              ),
              hintStyle: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 13.sp,
                color: Colour.primary_color,
              ),
              fillColor: Color(0xFFDBB98F).withOpacity(.10),
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6.r),
              )),
        ),
      ),
    );
  }
}
