// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poonolil_textiles_ui/constant/colors.dart';

import '../../widgets/custom_circle_container.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: Colour.gradient),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 589,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/img_11.png'),
                        fit: BoxFit.cover),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 93.h,
                        color: Colors.white.withOpacity(.50),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 14.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FaIcon(FontAwesomeIcons.bars),
                              Image.asset(
                                'images/logo.png',
                                color: Colors.black,
                                width: 100.w,
                                height: 41.h,
                              ),
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Icon(
                                    Icons.shopping_cart_outlined,
                                    color: Colour.black_color,
                                  ),
                                  Positioned(
                                    right: -3.w,
                                    top: -4.h,
                                    child: Container(
                                      height: 12.h,
                                      width: 12.w,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius:
                                        BorderRadius.circular(180.r),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "1",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 8.sp,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 24.w, bottom: 30.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "SHOP",
                              style: TextStyle(
                                fontSize: 28.sp,
                                fontWeight: FontWeight.w400,
                                color: Colour.white_color,
                                letterSpacing: 1,
                              ),
                            ),
                            Text(
                              "Tellus Vel Lobortis Neque, Urna, Quisque\nTempor Pellentesque Ac Volutpat",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Colour.white_color.withOpacity(.60),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 17.h),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20.w),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Shop By Category",
                              style: TextStyle(
                                fontSize: 22.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF170906),
                              ),
                            ),
                          ),
                          SizedBox(height: 10.h),
                          SizedBox(
                            height: 105.h,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                CustomCircleContainer(
                                  image: 'images/silk.png',
                                  text: "SILK",
                                ),
                                SizedBox(width: 12.h),
                                CustomCircleContainer(
                                  image: 'images/silk_2.png',
                                  text: "SILK COTTON",
                                ),
                                SizedBox(width: 12.h),
                                CustomCircleContainer(
                                  image: 'images/silk_3.png',
                                  text: "COTTON",
                                ),
                                SizedBox(width: 12.h),
                                CustomCircleContainer(
                                  image: 'images/silk.png',
                                  text: "WORK",
                                ),
                                SizedBox(width: 12.h),
                                CustomCircleContainer(
                                  image: 'images/silk_2.png',
                                  text: "COTTON",
                                ),
                                SizedBox(width: 12.h),
                                CustomCircleContainer(
                                  image: 'images/silk.png',
                                  text: "SILK",
                                ),
                                SizedBox(width: 5.h),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 36.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "550 Results",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                        color: Colour.black_color,
                      ),
                    ),
                    SizedBox(width: 50.w),
                    Row(
                      children: [
                        Image.asset('images/filter.png'),
                        SizedBox(width: 3.w),
                        Text("Filter")
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.filter_list_outlined,
                          color: Colour.primary_color,
                        ),
                        SizedBox(width: 3.w),
                        Text("Sort")
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                Center(
                  child: Container(
                    width: 314.h,
                    height: 1,
                    color: Colors.black.withOpacity(.15),
                  ),
                ),
                SizedBox(height: 16.h),
                CustomColumn(
                  image: 'images/img_12.png',
                  title: 'Black Satin Saree',
                  description:
                      '"Tellus Vel Lobortis Neque, Urna, Quisque\nTempor Pellentesque Ac Volutpat"',
                  amount: '5000',
                ),
                SizedBox(height:50.h),
                CustomColumn(
                  image: 'images/img_4.png',
                  title: 'Dhakai Benarasi',
                  description:
                  '"Tellus Vel Lobortis Neque, Urna, Quisque\nTempor Pellentesque Ac Volutpat"',
                  amount: '3000',
                ),
                SizedBox(height:50.h),
                CustomColumn(
                  image: 'images/img_5.png',
                  title: 'Tangail Handloom Saree',
                  description:
                  '"Tellus Vel Lobortis Neque, Urna, Quisque\nTempor Pellentesque Ac Volutpat"',
                  amount: '7500',
                ),
                SizedBox(height:50.h),
                CustomColumn(
                  image: 'images/img_14.png',
                  title: 'Katan Saree',
                  description:
                  '"Tellus Vel Lobortis Neque, Urna, Quisque\nTempor Pellentesque Ac Volutpat"',
                  amount: '25000',
                ),
                SizedBox(height:50.h),
                CustomColumn(
                  image: 'images/img_13.png',
                  title: 'Silk Saree',
                  description:
                  '"Tellus Vel Lobortis Neque, Urna, Quisque\nTempor Pellentesque Ac Volutpat"',
                  amount: '9000',
                ),
                SizedBox(height: 30),
                Center(child: Text("1  -  2  -  3  -  4",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black),)),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomColumn extends StatelessWidget {
  final image;
  final String title;
  final String description;
  final String amount;
  const CustomColumn({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Center(
              child: Image.asset(
                image,
                width: 314.w,
                height: 301.h,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 10.h,
              right: 40.w,
              child: Container(
                height: 38.h,
                width: 38.h,
                decoration: BoxDecoration(
                    color: Color(0xFF6A594F),
                    borderRadius: BorderRadius.circular(180.r)),
                child: Center(
                  child: Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 24.h),
        Padding(
          padding: EdgeInsets.only(left: 28.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1),
              ),
              SizedBox(height: 3.h),
              Text(
                description,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: Colour.black_color.withOpacity(.60),
                ),
              ),
              SizedBox(height: 13.h),
              Container(
                height: 49.h,
                width: 314.w,
                decoration: BoxDecoration(
                    color: Colour.primary_color,
                    borderRadius: BorderRadius.circular(6.r)),
                child: Padding(
                  padding: EdgeInsets.only(left: 18.w),
                  child: Row(
                    children: [
                      Text(
                        "BDT ${amount}",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20.sp,
                            color: Colour.secondary_color),
                      ),
                      SizedBox(width: 11.w),
                      Container(
                        width: 2,
                        height: 20,
                        color: Colour.secondary_color.withOpacity(.60),
                      ),
                      SizedBox(width: 11.w),
                      Text(
                        "ADD TO CART",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 15.sp,
                            color: Colour.secondary_color),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.cartFlatbed,
                      color: Colour.secondary_color,
                      size: 15,
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      "Free Shipping",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: Colour.black_color.withOpacity(.60),),
                    ),
                    SizedBox(width: 30.w),
                    FaIcon(
                      FontAwesomeIcons.bandcamp,
                      color: Colour.secondary_color,
                      size: 15,
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      "BRANDNEW30",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: Colour.black_color.withOpacity(.60)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
