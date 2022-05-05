import 'package:ellen/ui/widgets/app_button.dart';
import 'package:ellen/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../dialogs/bottom_sheet.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  void initState() {
    super.initState();
   showModalBottomSheet(
        enableDrag: false,
        elevation: 5.0,
        isDismissible: true,
        useRootNavigator: true,
        context: context,
        builder: (context) => Container(
          height: MediaQuery.of(context).size.height * 0.30,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('You must login to access your assets/crypto'),
              AppButton(onPressed: (){}, child: Text('Login in with BankID'))
            ],
          ),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // SizedBox(
            //   height: MediaQuery.of(context).size.height * 0.2,
            // ),
            const Spacer(),
            const Center(
                child: Text(
              'See all your assets\nRight now you don’t have any assets',
              style: AppStyles.bodyTextStyle,
              textAlign: TextAlign.center,
            )),
            AppButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text('Click here'),
                  SizedBox(width: 10),
                  Icon(Icons.refresh),
                  SizedBox(width: 10),
                  Text('to view')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
