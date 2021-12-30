import 'package:library_app/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:library_app/register_page.dart';

import 'login_page.dart';

void main() {
  runApp(GetMaterialApp(
    
    locale: Get.deviceLocale,
    
    getPages: [
      GetPage(name: '/', page: () => HomePage()),
      GetPage(name: '/login', page: () => LoginPage()),
      GetPage(name: '/register', page:()=>RegisterPage())
    ],
    
    home: HomePage(),
  ));
}
