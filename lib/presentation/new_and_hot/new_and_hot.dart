import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/home/widgets/custom_button_widget.dart';

import '../../core/constants.dart';
import 'widgets/coming_soon.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(80),
            child: AppBar(
              title: const Text('New & Hot',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              actions: [
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
                kwidth,
              ],
              bottom: TabBar(
                  isScrollable: true,
                  indicator: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(30)),
                  labelColor: kBlackColor,
                  unselectedLabelColor: kWhiteColor,
                  indicatorPadding: const EdgeInsets.all(3),
                  labelStyle: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                  tabs: const [
                    Tab(
                      text: '🍿 Coming Soon',
                    ),
                    Tab(text: "👀 Everyon's Watching"),
                  ]),
            )),
        body: TabBarView(children: [
          _buildCommingSonn(),
          _buildEveryonsWatching(),
        ]),
      ),
    );
  }

  Widget _buildCommingSonn() {
    return ListView.builder(
      itemBuilder: (context, index) => const ComingSoonWidget(),
      itemCount: 10,
    );
  }

  Widget _buildEveryonsWatching() {
    return SizedBox();
  }
}

