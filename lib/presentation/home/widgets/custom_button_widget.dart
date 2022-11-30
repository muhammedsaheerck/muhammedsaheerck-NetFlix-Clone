import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';

class CustomButtonWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  const CustomButtonWidget({
    Key? key, required this.icon, required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: kWhiteColor,
          size: 30,
        ),
        Text(
         label,
          style: TextStyle(color: kWhiteColor),
        )
      ],
    );
  }
}
