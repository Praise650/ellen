import 'package:ellen/ui/widgets/app_button.dart';
import 'package:flutter/material.dart';

import '../../dashboard/dashboard.dart';

class PageViewSix extends StatelessWidget {
  const PageViewSix({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Icon(
              Icons.notifications_none,
              size: 150,
              color: Colors.teal,
            ),
            SizedBox(height: 40),
            Text(
              'Get notified!',
              style: TextStyle(color: Colors.teal, fontSize: 34),
            ),
            SizedBox(height: 20),
            Text(
              'Allow push-notification so your\n always up to date.',
              softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 24),
            )
          ],
        ),
        AppButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const DashBoard()));
            },
            child: const Text(
              'Allow',
              style: TextStyle(color: Colors.white, fontSize: 24),
            )),
      ],
    );
  }
}
