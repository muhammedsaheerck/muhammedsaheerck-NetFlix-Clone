import 'package:flutter/material.dart';
import 'package:netflix/presentation/widgets/main_title.dart';

import '../../core/constants.dart';
import 'main_card.dart';

class MainTitleCards extends StatelessWidget {
  final String title;
  const MainTitleCards({
    Key? key, required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         MainTitle(title:title),
        kheight,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(10, ((index) => const MainCard())),
          ),
        )
      ],
    );
  }
}
