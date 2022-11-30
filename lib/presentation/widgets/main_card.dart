import 'package:flutter/material.dart';

import '../../core/constants.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5,right: 5),
      child: Container(
        width: 150,
        height: 200,
        decoration: BoxDecoration(
            borderRadius: kRadius5,
            image: const DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/sWoYDNPNZs5MtzPbirXV73tIHrA.jpg",
                ))),
      ),
    );
  }
}
