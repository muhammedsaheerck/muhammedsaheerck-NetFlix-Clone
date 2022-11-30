import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/background_card.dart';
import 'package:netflix/presentation/home/widgets/custom_button_widget.dart';
import '../widgets/main_title_card.dart';
import 'widgets/number_title_card.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: const [
        BackgroundCardWidget(),
        MainTitleCards(
          title: 'Released In The Past year',
        ),
        kheight,
        MainTitleCards(
          title: 'Trending Now',
        ),
        kheight,
        NumberTitleCard(),
        kheight,
        MainTitleCards(
          title: 'Tense Dramas',
        ),
        kheight,
        MainTitleCards(
          title: 'South Indian Cinema',
        ),
      ],
    ));
  }
}
