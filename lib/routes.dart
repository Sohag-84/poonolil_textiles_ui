// ignore_for_file: prefer_const_constructors

import 'package:get/get.dart';
import 'package:poonolil_textiles_ui/views/address_screen.dart';

import 'views/navigation/bottom_navigation_bar.dart';
import 'views/navigation/home_screen.dart';
import 'views/login_screen.dart';
import 'views/otp_screen.dart';

String loginScreen = '/login-screen';
String otpScreen = '/otp-screen';
String homeScreen = '/home-screen';
String navigationScreen = '/navigationBar-screen';
String addressScreen = '/address-screen';

List<GetPage> pages = [
  GetPage(name: loginScreen, page: () => LoginScreen()),
  GetPage(name: otpScreen, page: () => OtpScreen()),
  GetPage(name: homeScreen, page: () => HomeScreen()),
  GetPage(name: navigationScreen, page: () => NavigationBar()),
  GetPage(name: addressScreen, page: () => AddressScreen()),
];