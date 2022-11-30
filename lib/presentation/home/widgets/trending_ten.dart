import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import '../../../core/constants.dart';

class TrendingTenCard extends StatelessWidget {
  final int index;
  const TrendingTenCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Row(
          children: [
            const SizedBox(
              width: 60,
            ),
            Container(
              width: 150,
              height: 250,
              decoration: BoxDecoration(
                  borderRadius: kRadius5,
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/sWoYDNPNZs5MtzPbirXV73tIHrA.jpg",
                      ))),
            ),
          ],
        ),
        Padding(
          padding:  EdgeInsets.only(left: 20,top: 70),
          child: BorderedText(
            strokeWidth: 2,strokeColor:Colors.white ,
            child: Text(
              '${index + 1}',
              style: TextStyle(fontSize: 120,color: Colors.black,decoration: TextDecoration.none,fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
