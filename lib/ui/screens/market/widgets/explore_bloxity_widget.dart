import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../app/res/images.dart';
import '../../../../app/res/svgs.dart';
import '../../../styles/style.dart';

class ExploreBloxity extends StatelessWidget {
  const ExploreBloxity({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 158,
      padding: const EdgeInsets.only(
        left: 20,
        top: 40,
      ),
      color: const Color(0xffFFFFFF),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Want to learn more\nabout bloxity?',
                  style: kHeadline4TextStyle.copyWith(
                    color: AppColor.textPrimary,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit.',
                  style: kBodyText2TextStyle.copyWith(
                    fontWeight: FontWeight.w400,
                    color: AppColor.textSecondary,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: SvgPicture.asset(AppSvgs.pana,)
              ),
            ),
        ],
      ),
    );
  }
}
