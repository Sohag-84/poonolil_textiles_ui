// ignore_for_file: prefer_const_constructors

import 'package:get/get.dart';
import 'package:poonolil_textiles_ui/views/login_screen.dart';

String loginScreen = '/login-screen';

List<GetPage> pages = [
  GetPage(name: loginScreen, page: () => LoginScreen()),
];