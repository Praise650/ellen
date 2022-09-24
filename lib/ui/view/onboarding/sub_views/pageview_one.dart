import 'package:ellen/utils/styles.dart';
import 'package:flutter/material.dart';

class PageViewOne extends StatelessWidget {
  const PageViewOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text('Welcome to Ellen!', style: AppStyles.welcomeHeaderTextStyle),
            SizedBox(height: 20),
            Text(
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
    );
  }
}
