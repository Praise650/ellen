import 'package:flutter/material.dart';

import '../../layouts/base_scaffold_body.dart';
import '../../widgets/news/news_card_widget.dart';

class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScaffoldBody(
        padding: EdgeInsets.zero,
        builder: (context, scrollController) {
          return Column(
            children: List.generate(
              6,
              (index) => const NewsCardWidget(
                newTitle: 'Bloxity News',
                newsSubtitle: 'Bloxity News',
              ),
            ),
          );
        });
  }
}
