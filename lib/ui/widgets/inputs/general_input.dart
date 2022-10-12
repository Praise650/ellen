import 'package:ellen/ui/styles/colors.dart';
import 'package:flutter/material.dart';

class GeneralInput extends StatefulWidget {
  const GeneralInput({Key? key, this.controller}) : super(key: key);
  final TextEditingController? controller;

  @override
  State<GeneralInput> createState() => _GeneralInputState();
}

class _GeneralInputState extends State<GeneralInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 7.5),
      decoration: BoxDecoration(
        color: AppColor.fieldColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.search,
            color: AppColor.splashBgColor,
          ),
          Container(
            color: AppColor.primarySwatch[200],
            margin: const EdgeInsets.only(right: 8),
            width: 2,
            height: 30,
          ),
          Expanded(
            child: TextFormField(
              controller: widget.controller,
              decoration: const InputDecoration(
                hintText: 'Search for cryptocurrencies',
                border: InputBorder.none,
              ),
            ),
          ),
          Icon(
            Icons.close,
            color: AppColor.primarySwatch[200],
          ),
        ],
      ),
    );
  }
}
