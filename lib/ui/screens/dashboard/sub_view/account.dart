import 'package:ellen/ui/widgets/app_button.dart';
import 'package:ellen/utils/colors.dart';
import 'package:ellen/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Account extends StatelessWidget {
  Account({Key? key}) : super(key: key);
  List<String> text = ['Support', 'User terms', 'GDPR policy'];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 10.0,
          right: 10.0,
          left: 10.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.30,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: AppColor.appSecondaryColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: List.generate(
                    text.length,
                    (index) => Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ListTile(
                              // elevation: 0,
                              leading: Text(
                                text[index],
                                style: AppStyles.bodyTextStyle,
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colors.teal,
                              ),
                            ),
                            index == 2
                                ? SizedBox.shrink()
                                : Divider(
                                    thickness: 0.4,
                                    color: Colors.black.withOpacity(0.4),
                                    height: 1,
                                  )
                          ],
                        )),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 60,
              decoration: BoxDecoration(
                  color: AppColor.appSecondaryColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Dark mode',
                      style: AppStyles.bodyTextStyle,
                    ),
                    Switch(
                      value: true,
                      onChanged: (value) {},
                      activeColor: Colors.white,
                      activeTrackColor: AppColor.colorTeal,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            RichText(
                textAlign: TextAlign.left,
                text: const TextSpan(text: 'Version ', children: [
                  TextSpan(text: '1.5.80'),
                ])),
            const SizedBox(height: 40),
            SizedBox(
              height: 60,
              child: Material(
                elevation: 0,
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Icon(
                        FontAwesomeIcons.discord,
                        color: AppColor.colorTeal,
                      ),
                      SizedBox(width: 40),
                      Text(
                        'Discord',
                        style: TextStyle(color: AppColor.colorTeal),
                      ),
                    ],
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(
                    color: AppColor.colorTeal,
                    width: 2,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            const Align(
                alignment: Alignment.center,
                child: Text(
                  'Logga on for att se din kontoinformation',
                  style: AppStyles.bodyTextStyle,
                )),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: AppButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Logga in med  \t Bank ID'),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
