import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constants.dart';
import '../../home/widgets/custom_button_widget.dart';
import '../../widgets/video_widget..dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({Key? key, F}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 420,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                'FEB',
                style: TextStyle(fontSize: 15, color: kMonthColor),
              ),
              Text(
                '11',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 5),
              )
            ],
          ),
        ),
        Container(
          width: size.width - 50,
          height: 420,
          // color: Colors.blue,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VideoWidget(
                image: NewAndHotComming,
              ),
              kheight,
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: const [
                    Text(
                      'TALLGIRL 2',
                      style: TextStyle(
                          fontSize: 30,
                          letterSpacing: -5,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    CustomButtonWidget(
                      icon: Icons.alarm_add,
                      label: 'Remaind Me',
                      textSize: 12,
                    ),
                    CustomButtonWidget(
                      icon: Icons.info,
                      label: 'info',
                      textSize: 12,
                    ),
                    kwidth,
                  ],
                ),
              ),
              const Text(
                'Coming on Friday',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              kheight,
              const Text('Tall Girl 2',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  )),
              kheight,
              const Text(
                'Landing in the leading in rth school musical is a dream come true for jodi,untill the pressure sebds her confidence- and her relationship- into a tallspin',
                style: TextStyle(color: kMonthColor),
              )
            ],
          ),
        ),
      ],
    );
  }
}
