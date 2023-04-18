
import 'package:easy_to_travel/pages/main/sign_up/details_page.dart';
import 'package:easy_to_travel/pages/main/sign_up/pin_code_page.dart';
import 'package:easy_to_travel/pages/main/sign_up/sign_up.dart';
import 'package:flutter/material.dart';

import '../pages/main/main_page.dart';
import '../pages/splash/splash_page.dart';
import 'app_routes.dart';

class AppPages {
  AppPages._();

  static final Map<String, WidgetBuilder> routes = {
    AppRoutes.initial: (context) => const SplashPage(),
    AppRoutes.signup: (context) => const SignUpPage(),
    AppRoutes.main: (context) =>  MainPage(),
    AppRoutes.details: (context) =>  DetailsPage(),
    AppRoutes.pincode: (context) =>  PinCodePage(),


  };
}
