import 'package:flutter/material.dart';
import '../../core/constants.dart';

class VideoWidget extends StatelessWidget {
  final String image;
  const VideoWidget({
    Key? key, required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
            width: double.infinity,
            height: 200,
            child: Image.network(
              image,
              fit: BoxFit.cover,
            )),
        Positioned(
          bottom: 15,
          right: 10,
          child: CircleAvatar(
              backgroundColor: Colors.black.withOpacity(0.5),
              radius: 22,
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.volume_off))),
        ),
      ],
    );
  }
}
