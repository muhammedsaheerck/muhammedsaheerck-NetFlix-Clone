import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix/presentation/search/widgets/title.dart';

import '../../../core/constants.dart';

const String imgeUrl =
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/xdmmd437QdjcCls8yCQxrH5YYM4.jpg";

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const SearchTitle(
        title: 'Movies & TV ',
      ),
      kheight,
      Expanded(
        child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 1/1.4,
          children: List.generate(20, ((index) => const MainCard())),
        ),
      ),
    ]);
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image:const DecorationImage(fit: BoxFit.cover,
          image: NetworkImage("https://www.themoviedb.org/t/p/w600_and_h900_bestv2/xdmmd437QdjcCls8yCQxrH5YYM4.jpg")),
      ),
    );
  }
}
