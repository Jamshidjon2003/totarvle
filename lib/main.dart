import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';
import 'routes/app_pages.dart';
import 'routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MaterialApp( debugShowCheckedModeBanner: false,
        title: 'EasyToTravel',
        theme: lightTheme,
        initialRoute: AppRoutes.initial,
        routes: AppPages.routes,
      ),
    );
  }
}

