import 'package:ellen/ui/styles/colors.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final VoidCallback onPressed;
  final MaterialStateProperty<Color>? color;
  final Widget child;

  const AppButton({
    Key? key,
    required this.onPressed,
    this.color,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      // borderRadius: BorderRadius.circular(9.r),
      borderRadius: BorderRadius.circular(9),
      child: SizedBox(
        height: 60,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
            backgroundColor:
                color ?? MaterialStateProperty.all<Color>(AppColor.primaryBtnBg),
          ),
          child: Center(child: child),
        ),
      ),
    );
  }
}
