// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:poonolil_textiles_ui/constant/colors.dart';

import '../widgets/custom_delivered_container.dart';
import '../widgets/custom_row_image_details.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

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
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration:
              BoxDecoration(gradient: LinearGradient(colors: Colour.gradient)),
          child: Column(
            children: [
              SizedBox(height: 40.h),
              SizedBox(
                height: 206.h,
                width: 312.w,
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.r),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.only(left: 15.w, right: 15.w, top: 10.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Delivery On 21 July",
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 14.h),
                            CustomRowImageDetails(
                              image: 'images/img_16.png',
                              title: 'Black Satin Saree Supreeme',
                              sareeSize: 'Small',
                              sareeColor: "Black",
                              quantity: 1,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 312.w,
                        height: 85.h,
                        color: Color(0xFFEBBD1C).withOpacity(.20),
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
                                        color:
                                            Color(0xFFEBBD1C).withOpacity(.40),
                                      ),
                                      SizedBox(width: 5.w),
                                      Text(
                                        "IN-TRANSIT",
                                        style: TextStyle(
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFFEBBD1C),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '1660',
                                    style: TextStyle(
                                      fontSize: 22.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "BDT 5000",
                                style: TextStyle(
                                  fontSize: 22.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              SizedBox(
                height: 310.h,
                width: 312.w,
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.r),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.only(left: 15.w, right: 15.w, top: 10.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomRowImageDetails(
                              image: 'images/img_16.png',
                              title: 'Black Satin Saree Supreeme',
                              sareeSize: 'Small',
                              sareeColor: "Grey",
                              quantity: 1,
                            ),
                            SizedBox(height: 9.h),
                            CustomRowImageDetails(
                              image: 'images/img_17.png',
                              title: 'Indian Traditional Wedding\nSaree',
                              sareeSize: 'Small',
                              sareeColor: "Red",
                              quantity: 5,
                            ),
                            SizedBox(height: 9.h),
                            CustomRowImageDetails(
                              image: 'images/img_18.png',
                              title: 'Tangail Black Silk Urbaniser',
                              sareeSize: 'Small',
                              sareeColor: "Black",
                              quantity: 2,
                            ),
                          ],
                        ),
                      ),
                      CustomDeliveredContainer(
                        perPrice: 2450,
                        taka: 10560,
                        date: '12 September',
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              SizedBox(
                height: 182.h,
                width: 312.w,
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.r),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.only(left: 15.w, right: 15.w, top: 10.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            CustomRowImageDetails(
                              image: 'images/img_16.png',
                              title: 'Black Satin Saree Supreeme',
                              sareeSize: 'Small',
                              sareeColor: "Grey",
                              quantity: 3,
                            ),
                          ],
                        ),
                      ),
                      CustomDeliveredContainer(
                        perPrice: 1500,
                        taka: 3650,
                        date: '12 July',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30.h),
            ],
          ),
        ),
      ),
    );
  }
}
