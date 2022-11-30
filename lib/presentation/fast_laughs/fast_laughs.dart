import 'package:flutter/material.dart';

import 'package:netflix/presentation/fast_laughs/widgets/video_list_items.dart';

class SCreenFastLaughs extends StatelessWidget {
  const SCreenFastLaughs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: PageView(
            scrollDirection: Axis.vertical,
        children: List.generate(10, ((index) =>   VideoListItem(index: index,))),
      )),
    );
  }
}
