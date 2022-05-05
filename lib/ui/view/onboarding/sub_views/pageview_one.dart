import 'package:ellen/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageViewOne extends StatelessWidget {
  const PageViewOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Welcome to Ellen!', style: AppStyles.welcomeHeaderTextStyle),
              SizedBox(height: 20),
              Text.rich(
                  TextSpan(
                      text:
                          'Please have an introduction to our platform and functions.'),
                  textAlign: TextAlign.left,
                  softWrap: true,
                  style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.w500)),
            ],
          ),
        ),
        SizedBox(height: 50),
        Align(
          alignment: Alignment.center,
          child: Placeholder(
            fallbackWidth: 30,
            fallbackHeight: 200,
          ),
        ),
        SizedBox(height: 60),
        Align(
            alignment: Alignment.center,
            child: Text(
              'Swipe to navigate',
              style: TextStyle(fontSize: 18, color: Colors.teal),
            )),
      ],
    );
  }
}
