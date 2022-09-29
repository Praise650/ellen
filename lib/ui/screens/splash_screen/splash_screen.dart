import 'package:flutter/material.dart';

import '../../styles/colors.dart';
import '../../styles/texts.dart';
import '../onboarding/onboarding.dart';

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
          builder: (context) => const OnBoarding(),
        ),
      ),
    );
    // setState((){});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              Text('Welcome to Ellen!',
                  style: welcomeHeaderTextStyle),
              const SizedBox(height: 20),
              const Text(
                'Please have an introduction to our platform and functions.',
                textAlign: TextAlign.left,
                softWrap: true,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(height: 50),
          const Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.account_circle_rounded,
              size: 84,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 60),
          const Align(
              alignment: Alignment.center,
              child: Text(
                'Swipe to navigate',
                style: TextStyle(fontSize: 18, color: Colors.teal),
              )),
        ],
      ),
    );
  }
}
