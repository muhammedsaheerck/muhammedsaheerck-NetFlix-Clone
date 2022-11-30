import 'package:flutter/material.dart';

import 'package:netflix/core/constants.dart';

class AppBarWidget extends StatelessWidget {
  String title;
  AppBarWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kwidth,
        Text(title,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
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
        kwidth,
      ],
    );
  }
}
