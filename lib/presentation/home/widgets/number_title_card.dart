import 'package:flutter/material.dart';
import 'package:netflix/presentation/home/widgets/trending_ten.dart';

import '../../../core/constants.dart';
import '../../widgets/main_title.dart';

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      const  MainTitle(title: 'Top 10 Tv Shows In India Today'),
        kheight,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
                10,
                ((index) => TrendingTenCard(
                      index: index,
                    ))),
          ),
        )
      ],
    );
  }
}