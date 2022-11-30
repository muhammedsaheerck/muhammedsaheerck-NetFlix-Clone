import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/trending_ten.dart';
import '../widgets/main_title.dart';
import '../widgets/main_title_card.dart';
import 'widgets/number_title_card.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children:const [
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
      ),
    ));
  }
}


