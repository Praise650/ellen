import 'package:ellen/ui/widgets/app_button.dart';
import 'package:flutter/material.dart';


show(BuildContext context) {
  return showModalBottomSheet(
    enableDrag: false,
    elevation: 5.0,
    isDismissible: true,
    useRootNavigator: true,
    context: context,
    builder: (context) => Container(
      height: MediaQuery.of(context).size.height * 0.23,
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
