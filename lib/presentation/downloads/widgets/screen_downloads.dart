import 'dart:math';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});
  final widgetLlist = [const _SmartDownloads(), Sction2(), const Section3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: AppBarWidget(
              title: 'Downloads',
            )),
        body: ListView.separated(
            padding: const EdgeInsets.all(15),
            itemBuilder: ((context, index) => widgetLlist[index]),
            separatorBuilder: ((context, index) => const SizedBox(
                  height: 30,
                )),
            itemCount: widgetLlist.length));
  }
}

class Sction2 extends StatelessWidget {
  Sction2({super.key});

  final List imageList = [
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/xdmmd437QdjcCls8yCQxrH5YYM4.jpg",
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/sWoYDNPNZs5MtzPbirXV73tIHrA.jpg",
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/9qG7cBhu444BYmcIOeoLJoCBMuO.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          'Indroducing Downloads for You',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: kWhiteColor, fontSize: 22, fontWeight: FontWeight.bold),
        ),
        kheight,
        const Text(
          'We will download a personalised selection of\nmovies and shows for you, so theres\nalways something to watch on your \ndevices',
          style: TextStyle(
              color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          // width: size.width * 0.3,
          // height: size.height * 0.5,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Center(
                  child: CircleAvatar(
                radius: size.width * 0.36,
                backgroundColor: Colors.grey.withOpacity(0.5),
              )),
              DownloadsImageWidget(
                image: imageList[0],
                margin: const EdgeInsets.only(left: 170, top: 55),
                angle: 20,
                size: Size(size.width * 0.35, size.width * 0.50),
                radius: 5,
              ),
              DownloadsImageWidget(
                image: imageList[2],
                margin: const EdgeInsets.only(right: 170, top: 55),
                angle: -20,
                radius: 5,
                size: Size(size.width * 0.35, size.width * 0.50),
              ),
              DownloadsImageWidget(
                image: imageList[1],
                radius: 8,
                margin: const EdgeInsets.only(bottom: 10, top: 30),
                size: Size(size.width * 0.40, size.width * 0.60),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            onPressed: (() {}),
            color: kButtonColorBule,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Set Up',
                style: TextStyle(
                    color: kWhiteColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        kheight,
        MaterialButton(
          onPressed: (() {}),
          color: kButtonColorWhite,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'See What You Can Download',
              style: TextStyle(
                  color: kBlackColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.settings,
          color: kWhiteColor,
        ),
        kwidth,
        Text('Smart Downloads',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
      ],
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget(
      {Key? key,
      required this.image,
      this.angle = 0,
      required this.margin,
      required this.size,
      this.radius = 10})
      : super(key: key);
  final double angle;
  final String image;
  final EdgeInsets margin;
  final Size size;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle * pi / 180,
        child: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius),
              image: DecorationImage(
                image: NetworkImage(image),
                fit: BoxFit.cover,
              )),
        ),
      ),
    );
  }
}
