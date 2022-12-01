import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constants.dart';
import '../../home/widgets/custom_button_widget.dart';
import '../../widgets/video_widget..dart';

class EveryonsWstchingWidget extends StatelessWidget {
  const EveryonsWstchingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const  VideoWidget(image: NewAndHotEvryon,),
        kheight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            CustomButtonWidget(
              icon: Icons.share,
              label: 'Share',
              textSize: 16,
            ),
            kwidth,
            CustomButtonWidget(
              icon: Icons.add,
              label: 'My List',
              textSize: 16,
            ),
            kwidth,
            CustomButtonWidget(
              icon: Icons.play_arrow,
              label: 'Play',
              textSize: 16,
            ),
            kwidth,
          ],
        ),
        const Text('Friends',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            )),
        kheight,
        const Text(
          'Landing in the leading in rth school musical is a dream come true for jodi,untill the pressure sebds her confidence- and her relationship- into a tallspin',
          style: TextStyle(color: kMonthColor),
        ),
        kheight20,
      ],
    );
  }
}
