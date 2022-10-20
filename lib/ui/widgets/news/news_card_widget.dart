import 'package:flutter/material.dart';

import '../../styles/style.dart';

class NewsCardWidget extends StatelessWidget {
  final String newTitle;

  final String? newsSubtitle;

  const NewsCardWidget({
    Key? key,
    required this.newTitle,
    this.newsSubtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 37.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 24,
                      backgroundColor: AppColor.primary,
                    ),
                    const SizedBox(width: 14),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          newTitle,
                          style: kHeadline3TextStyle.copyWith(
                            color: AppColor.textPrimary,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          newsSubtitle ?? '',
                          style: kBodyText1TextStyle.copyWith(
                            fontWeight: FontWeight.w400,
                            color: AppColor.secondarySwatch[300],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const Icon(
                  Icons.grid_view_sharp,
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 110),
            decoration: newsCardDeco,
            child: Text(
              'Bloxity',
              style: kHeadline1TextStyle.copyWith(
                fontSize: 48,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 37.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('How to Harness the Power of Bloxity'),
                const SizedBox(height: 8),
                const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Amet,'
                  ' consectetur ultricies scelerisque ame...',
                ),
                const SizedBox(height: 38),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.favorite_border),
                        SizedBox(width: 8),
                        Text('23.7k')
                      ],
                    ),
                    const SizedBox(width: 27),
                    const Icon(Icons.ios_share),
                  ],
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
