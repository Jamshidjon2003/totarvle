import 'package:flutter/material.dart';
import '../../core/theme/theme_colors.dart';
import '../../routes/app_routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.pushReplacementNamed(context, AppRoutes.signup);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        surfaceTintColor: ThemeColors.backgroundColor,
        backgroundColor: ThemeColors.backgroundColor,
      ),
      backgroundColor: ThemeColors.backgroundColor,
      body: const Center(
        child: Image(
          image: AssetImage('assets/png/logo.png'),
        ),
      ),
    );
  }
}
