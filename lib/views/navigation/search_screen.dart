import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant/colors.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

  final List<String> _categories = [
    'Kanjipuram',
    'Silk',
    'Banarsi',
    'Ikkath',
    'Chikankari',
    'Salwar',
    'Kanjeevaram',
    'Tussar'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/img_10.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 24.w, bottom: 30.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "SEARCH",
              style: TextStyle(
                fontSize: 20.sp,
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
            SizedBox(height: 10.h),

            ///search box
            SizedBox(
              width: 314.w,
              height: 49.h,
              child: TextFormField(
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp,
                  color: Colour.white_color,
                ),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: const Color(0xFFDBB98F).withOpacity(.40),
                    ),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  fillColor: const Color(0xFF3F393D),
                  filled: true,
                  hintText: "Search product",
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp,
                    color: Colour.white_color,
                  ),
                  suffixIcon: const Icon(
                    Icons.search_outlined,
                    color: Colors.white,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              ),
            ),
            SizedBox(height: 22.h),
            Text(
              "Popular Searches",
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w400,
                color: Colour.white_color,
              ),
            ),
            SizedBox(height: 12.h),
            SizedBox(
              height: 28.h,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _categories.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(right: 6.w),
                      child: Container(
                        height: 27.h,
                        decoration: BoxDecoration(
                          color: Colour.primary_color,
                          borderRadius: BorderRadius.circular(13.5.r),
                        ),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 10.w,
                              right: 10.w,
                            ),
                            child: Text(
                              _categories[index],
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 11.sp,
                                color: Colour.white_color.withOpacity(.85),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
