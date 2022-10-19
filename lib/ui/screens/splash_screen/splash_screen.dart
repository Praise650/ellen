import 'package:flutter/material.dart';

import '../../styles/colors.dart';
import '../../styles/texts.dart';
import '../dashboard/dashboard.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const DashBoard(),
        ),
      ),
    );
    // setState((){});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.splashBgColor,
        body: Center(
          child: Text(
            'Bloxity',
            style: kHeadline1TextStyle.copyWith(
              fontSize: 48,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
