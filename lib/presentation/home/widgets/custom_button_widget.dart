import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';

class CustomButtonWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  final double iconSize;
  final double textSize;
  const CustomButtonWidget({
    Key? key,
    required this.icon,
    required this.label,
   this.iconSize= 30,this.textSize= 10,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: kWhiteColor,
          size: iconSize,
        ),
        Text(
          label,
          style:  TextStyle(color: kWhiteColor,fontSize: textSize),
        )
      ],
    );
  }
}
