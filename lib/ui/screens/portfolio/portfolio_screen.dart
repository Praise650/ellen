import 'package:ellen/ui/widgets/app_button.dart';
import 'package:ellen/ui/styles/texts.dart';
import 'package:flutter/material.dart';

import '../../dialogs/bottom_sheet.dart';

class PortfolioScreen extends StatefulWidget {
  const PortfolioScreen({Key? key}) : super(key: key);

  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      show(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Center(
                child: Text(
              'See all your assets\nRight now you don’t have any assets',
              style: kBodyText1TextStyle,
              textAlign: TextAlign.center,
            )),
            AppButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text('Click here to screens'),
                ],
              ),
            ),
          ],
      ),
    );
  }
}
