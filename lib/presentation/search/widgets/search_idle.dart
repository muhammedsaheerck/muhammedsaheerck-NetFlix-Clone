import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/search/widgets/title.dart';

const imageUrl =
    'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/lcTuggU70y6pt6x13Rv1Ffjs93K.jpg';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       const  SearchTitle(title: 'Top Searches',),
        kheight,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: ((context, index) => const TopSearchItemTile()),
              separatorBuilder: ((context, index) => kheight20),
              itemCount: 10),
        ),
      ],
    );
  }
}



class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.35,
          height: 80,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imageUrl))),
        ),
       const  Expanded(
            child: Text(
          'Movie Name',
          style: TextStyle(
              color: kWhiteColor, fontSize: 16, fontWeight: FontWeight.bold),
        )),
       const CircleAvatar(backgroundColor: kWhiteColor,radius: 24,
        child: CircleAvatar(backgroundColor: kBlackColor,radius: 22,
        child: Icon(CupertinoIcons.play_fill,color: kWhiteColor,),),)
      ],
    );
  }
}
