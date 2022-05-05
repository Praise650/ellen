import 'package:ellen/ui/view/dashboard/dashboard.dart';
import 'package:ellen/ui/widgets/app_button.dart';
import 'package:flutter/material.dart';

class PageViewSix extends StatelessWidget {
  const PageViewSix({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Spacer(flex: 3),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
        Spacer(flex: 5),
        AppButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DashBoard()));
            },
            child: Text(
              'Allow',
              style: TextStyle(color: Colors.white, fontSize: 24),
            )),
        Spacer(
          flex: 1,
        )
      ],
    );
  }
}
