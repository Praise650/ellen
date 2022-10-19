import 'package:ellen/ui/widgets/app_button.dart';
import 'package:ellen/ui/styles/colors.dart';
import 'package:ellen/ui/styles/texts.dart';
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
                                style: kBodyText1TextStyle,
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
                      style: kBodyText1TextStyle,
                    ),
                    Switch(
                      value: true,
                      onChanged: (value) {},
                      activeColor: Colors.white,
                      activeTrackColor: AppColor.primary,
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
                        color: AppColor.primary,
                      ),
                      SizedBox(width: 40),
                      Text(
                        'Discord',
                        style: TextStyle(color: AppColor.primary),
                      ),
                    ],
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side:  BorderSide(
                    color: AppColor.primary,
                    width: 2,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Align(
                alignment: Alignment.center,
                child: Text(
                  'Logga on for att se din kontoinformation',
                  style: kBodyText1TextStyle,
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
