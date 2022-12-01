import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/background_card.dart';
import '../widgets/main_title_card.dart';
import 'widgets/number_title_card.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({super.key});

  ValueNotifier scrollNotifier = ValueNotifier(true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
            valueListenable: scrollNotifier,
            builder: (BuildContext context, index, _) {
              return NotificationListener<UserScrollNotification>(
                onNotification: (notification) {
                  final ScrollDirection direction = notification.direction;
                  if (direction == ScrollDirection.reverse) {
                    scrollNotifier.value = false;
                  } else if (direction == ScrollDirection.forward) {
                    scrollNotifier.value = true;
                  }
                  return true;
                },
                child: Stack(
                  children: [
                    ListView(
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
                        kheight,
                      ],
                    ),
                    scrollNotifier.value == true
                        ? AnimatedContainer(
                            duration: Duration(milliseconds: 1000),
                            width: double.infinity,
                            height: 90,
                            color: Colors.black.withOpacity(0.3),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Image.network(
                                      'https://cdn-images-1.medium.com/max/1200/1*ty4NvNrGg4ReETxqU2N3Og.png',
                                      height: 60,
                                      width: 60,
                                    ),
                                    const Spacer(),
                                    const Icon(
                                      Icons.cast,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    kwidth,
                                    Container(
                                      color: Colors.blue,
                                      height: 30,
                                      width: 30,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'Tv Shows',
                                      style: kHomeTitleText,
                                    ),
                                    Text(
                                      'Movies',
                                      style: kHomeTitleText,
                                    ),
                                    Text(
                                      'Categories',
                                      style: kHomeTitleText,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        : kheight,
                  ],
                ),
              );
            }));
  }
}
