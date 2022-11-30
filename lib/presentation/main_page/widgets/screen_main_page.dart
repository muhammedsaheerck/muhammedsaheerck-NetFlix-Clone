import 'package:flutter/material.dart';

import 'package:netflix/presentation/downloads/widgets/screen_downloads.dart';
import 'package:netflix/presentation/fast_laughs/fast_laughs.dart';
import 'package:netflix/presentation/home/screen_home.dart';
import 'package:netflix/presentation/new_and_hot/new_and_hot.dart';
import 'package:netflix/presentation/search/search.dart';

import 'bottom_nav.dart';

class ScreenMainPage extends StatelessWidget {
   ScreenMainPage({super.key});

  final pages =  [
    ScreenHome(),
    ScreenNewAndHot(),
    SCreenFastLaughs(),
    ScreenSearch(),
    ScreenDownloads(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
            valueListenable: indexChangeNotifier,
            builder: ((context, int index, _) {
              return pages[index];
            })),
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
