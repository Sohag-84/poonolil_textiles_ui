import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../constant/colors.dart';
import 'navigation/shop_screen.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

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
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/img_19.png'),
                      fit: BoxFit.cover,
                    ),
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
                              IconButton(
                                onPressed: () => Get.back(),
                                icon: const Icon(Icons.arrow_back_outlined),
                              ),
                              Text(
                                "Wishlist",
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w400,
                                ),
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
                              "Wishlist",
                              style: TextStyle(
                                fontSize: 57.sp,
                                fontWeight: FontWeight.w400,
                                color: Colour.white_color,
                                letterSpacing: 1,
                              ),
                            ),
                            Text(
                              "Tellus Vel Lobortis Neque, Urna, Quisque\nTempor Pellentesque Ac Volutpat",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w300,
                                color: Colour.white_color.withOpacity(.60),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 36.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "2 Products",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                        color: Colour.black_color,
                      ),
                    ),
                    SizedBox(width: 50.w),
                    Row(
                      children: [
                        Icon(
                          Icons.filter_list_outlined,
                          color: Colour.primary_color,
                        ),
                        SizedBox(width: 3.w),
                        const Text("Sort")
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 32.h),
                const CustomColumn(
                  image: 'images/img_12.png',
                  title: 'Black Satin Saree',
                  description:
                      '"Tellus Vel Lobortis Neque, Urna, Quisque\nTempor Pellentesque Ac Volutpat"',
                  amount: '5000',
                ),
                SizedBox(height: 50.h),
                const CustomColumn(
                  image: 'images/img_4.png',
                  title: 'Dhakai Benarasi',
                  description:
                      '"Tellus Vel Lobortis Neque, Urna, Quisque\nTempor Pellentesque Ac Volutpat"',
                  amount: '3000',
                ),
                SizedBox(height: 50.h),
                const CustomColumn(
                  image: 'images/img_5.png',
                  title: 'Tangail Handloom Saree',
                  description:
                      '"Tellus Vel Lobortis Neque, Urna, Quisque\nTempor Pellentesque Ac Volutpat"',
                  amount: '7500',
                ),
                SizedBox(height: 50.h),
                const CustomColumn(
                  image: 'images/img_14.png',
                  title: 'Katan Saree',
                  description:
                      '"Tellus Vel Lobortis Neque, Urna, Quisque\nTempor Pellentesque Ac Volutpat"',
                  amount: '25000',
                ),
                SizedBox(height: 50.h),
                const CustomColumn(
                  image: 'images/img_13.png',
                  title: 'Silk Saree',
                  description:
                      '"Tellus Vel Lobortis Neque, Urna, Quisque\nTempor Pellentesque Ac Volutpat"',
                  amount: '9000',
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
