// ignore_for_file: prefer_const_constructors

import 'package:get/get.dart';

import 'views/home_screen.dart';
import 'views/login_screen.dart';
import 'views/otp_screen.dart';

String loginScreen = '/login-screen';
String otpScreen = '/otp-screen';
String homeScreen = '/home-screen';

List<GetPage> pages = [
  GetPage(name: loginScreen, page: () => LoginScreen()),
  GetPage(name: otpScreen, page: () => OtpScreen()),
  GetPage(name: homeScreen, page: () => HomeScreen()),
];