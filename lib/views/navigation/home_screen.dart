import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poonolil_textiles_ui/constant/colors.dart';

import '../../widgets/custom_circle_container.dart';
import '../../widgets/custom_home_page_best_selling_container.dart';
import '../../widgets/custom_lookbook_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 93.h,
        elevation: 0,
        backgroundColor: Colour.appBar_color,
        title: Image.asset(
          'images/logo.png',
          width: 100,
          height: 42,
          color: Colour.black_color,
        ),
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: Center(
            child: FaIcon(
              FontAwesomeIcons.bars,
              color: Colour.black_color,
            ),
          ),
        ),
        actions: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(right: 20.w),
              child: Stack(
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
                        borderRadius: BorderRadius.circular(180.r),
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
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.topLeft,
              colors: Colour.gradient,
            ),
            borderRadius: BorderRadius.circular(15.r),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ///home image
              Container(
                height: MediaQuery.sizeOf(context).height - 190.h,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/home.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "lorem ipsum",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 10.sp,
                        color: Colour.white_color,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      "REDIFINING",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 28.sp,
                        color: Colour.white_color,
                        letterSpacing: 1,
                      ),
                    ),
                    Text(
                      "BEAUTY",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 28.sp,
                        color: Colour.white_color,
                        letterSpacing: 1,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      "Tellus vel lobortis neque, urna, quisque",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                        color: Colour.white_color.withOpacity(.60),
                        letterSpacing: 1,
                      ),
                    ),
                    Text(
                      "tempor pellentesque ac volutpat",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                        color: Colour.white_color.withOpacity(.60),
                        letterSpacing: 1,
                      ),
                    ),
                    const SizedBox(height: 30),
                    buildButton(onTap: null, text: "GO TO COLLECTION"),
                    SizedBox(height: 60.h),
                  ],
                ),
              ),
              SizedBox(height: 31.h),
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
                              color: const Color(0xFF170906),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        SizedBox(
                          height: 110.h,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              const CustomCircleContainer(
                                image: 'images/silk.png',
                                text: "SILK",
                              ),
                              SizedBox(width: 12.h),
                              const CustomCircleContainer(
                                image: 'images/silk_2.png',
                                text: "SILK COTTON",
                              ),
                              SizedBox(width: 12.h),
                              const CustomCircleContainer(
                                image: 'images/silk_3.png',
                                text: "COTTON",
                              ),
                              SizedBox(width: 12.h),
                              const CustomCircleContainer(
                                image: 'images/silk.png',
                                text: "WORK",
                              ),
                              SizedBox(width: 12.h),
                              const CustomCircleContainer(
                                image: 'images/silk_2.png',
                                text: "COTTON",
                              ),
                              SizedBox(width: 12.h),
                              const CustomCircleContainer(
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
                  SizedBox(height: 34.h),
                  buildContainer(),
                  SizedBox(height: 30.h),
                  Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Best Sellers",
                            style: TextStyle(
                                fontSize: 22.sp, fontWeight: FontWeight.w400),
                          ),
                        ),
                        const SizedBox(height: 25),
                        SizedBox(
                          height: 335,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              const CustomHomePageBestSellingContainer(
                                image: 'images/img_2.png',
                                title: "Black Satin Saree",
                                amount: "BDT 2000",
                              ),
                              SizedBox(width: 20.w),
                              const CustomHomePageBestSellingContainer(
                                image: 'images/img_4.png',
                                title: "Dhakai Benarasi",
                                amount: "BDT 9000",
                              ),
                              SizedBox(width: 20.w),
                              const CustomHomePageBestSellingContainer(
                                image: 'images/img_6.png',
                                title: "Silk Saree",
                                amount: "BDT 12000",
                              ),
                              SizedBox(width: 20.w),
                              const CustomHomePageBestSellingContainer(
                                image: 'images/img_3.png',
                                title: "Katan Saree",
                                amount: "BDT 5000",
                              ),
                              SizedBox(width: 20.w),
                              const CustomHomePageBestSellingContainer(
                                image: 'images/img_4.png',
                                title: "Tangail Handloom Saree",
                                amount: "BDT 7500",
                              ),
                              SizedBox(width: 10.w),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 50.h),
                  Container(
                      height: 322.h,
                      width: 312.w,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(15.r),
                        image: const DecorationImage(
                          image: AssetImage('images/imge_7.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 84.h,
                            width: 312.w,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.topRight,
                                colors: [
                                  Color(0xFF93849C),
                                  Color(0xFF9880A4),
                                  Color(0xFF8F819B),
                                ],
                              ),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(15.r),
                                bottomLeft: Radius.circular(15.r),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 17.w),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Get 10% Discount",
                                    style: TextStyle(
                                      fontSize: 23.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(height: 3.h),
                                  Text(
                                    "Get Poonolil Lux and get loyalty points\non top of discounts.",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 12.sp,
                                        color: Colour.black_color
                                            .withOpacity(.60)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )),
                  SizedBox(height: 15.h),
                  Container(
                    height: 340.h,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/img_8.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Hidden Gems",
                              style: TextStyle(
                                  fontSize: 22.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colour.white_color,
                                  letterSpacing: 1.3),
                            ),
                            const SizedBox(height: 3),
                            Text(
                              "Tellus Vel Lobortis Neque, Urna, Quisque Tempor",
                              style: TextStyle(
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colour.white_color.withOpacity(.60),
                                  letterSpacing: 1.3),
                            ),
                            Text(
                              "Pellentesque Ac Volutpat",
                              style: TextStyle(
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colour.white_color.withOpacity(.60),
                                  letterSpacing: 1.3),
                            ),
                          ],
                        ),
                        SizedBox(height: 40.h),
                        Column(
                          children: [
                            buildButton(onTap: null, text: 'EXPLORE THE GEMS')
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 52.h),
                  Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Lookbooks",
                            style: TextStyle(
                                fontSize: 22.sp,
                                fontWeight: FontWeight.w400,
                                color: Colour.black_color),
                          ),
                        ),
                        SizedBox(height: 15.h),
                        SizedBox(
                          height: 353.h,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              const CustomLookBooksContainer(
                                image: 'images/img_9.png',
                                title: "Manja Kili",
                                desription:
                                    "Tellus Vel Lobortis Neque, Urna,\nQuisque Tempor Pellentesque ",
                              ),
                              SizedBox(width: 20.w),
                              const CustomLookBooksContainer(
                                image: 'images/img_1.png',
                                title: "Manja Kili",
                                desription:
                                    "Tellus Vel Lobortis Neque, Urna,\nQuisque Tempor Pellentesque ",
                              ),
                              SizedBox(width: 20.w),
                              const CustomLookBooksContainer(
                                image: 'images/img_3.png',
                                title: "Manja Kili",
                                desription:
                                    "Tellus Vel Lobortis Neque, Urna,\nQuisque Tempor Pellentesque ",
                              ),
                              SizedBox(width: 20.w),
                              const CustomLookBooksContainer(
                                image: 'images/img_6.png',
                                title: "Manja Kili",
                                desription:
                                    "Tellus Vel Lobortis Neque, Urna,\nQuisque Tempor Pellentesque ",
                              ),
                              SizedBox(width: 20.w),
                            ],
                          ),
                        ),
                        SizedBox(height: 37.h),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'images/logo.png',
                        color: Colour.black_color,
                        height: 49.h,
                        width: 76.w,
                      ),
                      SizedBox(width: 5.w),
                      const FaIcon(
                        FontAwesomeIcons.satelliteDish,
                        color: Colors.red,
                      ),
                    ],
                  ),
                  SizedBox(height: 23.h),
                  buildContainer(),
                  SizedBox(height: 23.h),
                  buildContainer(),
                  SizedBox(height: 10.h),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildContainer() {
    return Container(
      height: 353.h,
      width: 312.w,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(15.r),
        image: const DecorationImage(
          image: AssetImage('images/img_1.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 84.h,
            width: 312.w,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: [
                  Color(0xFF979192),
                  Color(0xFF9B9595),
                  Color(0xFFBBB3B0),
                  Color(0xFFA59997),
                  Color(0xFFBCA798),
                ],
              ),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(15.r),
                bottomLeft: Radius.circular(15.r),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 17.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Bridal Collection",
                    style: TextStyle(
                      fontSize: 23.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 3.h),
                  Text(
                    'Tellus Vel Lobortis Neque, Urna,\nQuisque Tempor Pellentesque Ac Volutpat',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 12.sp,
                      color: Colour.black_color.withOpacity(.60),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  InkWell buildButton({required onTap, required text}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 49.h,
        width: 314.w,
        decoration: BoxDecoration(
          color: const Color(0xFFD2C5BE).withOpacity(.60),
          borderRadius: BorderRadius.circular(6.r),
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 18.w),
            child: Text(
              "GO TO COLLECTION",
              style: TextStyle(
                fontSize: 13.sp,
                fontWeight: FontWeight.w400,
                color: Colour.white_color,
                letterSpacing: 2,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
