import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/presentation/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({
    super.key,
  });
  final _widgetList = [
    const _SmartDownloads(),
    const Section2(),
    const Section3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBarWidget(
              title: "Downloads",
            )),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView.separated(
              itemBuilder: ((context, index) => _widgetList[index]),
              separatorBuilder: (context, index) => const SizedBox(
                    height: 25,
                  ),
              itemCount: _widgetList.length),
        )
        // ignore: prefer_const_literals_to_create_immutables

        );
  }
}

class Section2 extends StatelessWidget {
  const Section2({super.key});

  @override
  Widget build(BuildContext context) {
    final List imageList = [
      "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/1CHp8QQjGwqWaPZWjzcRidlt5Xs.jpg",
      "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/pFlaoHTZeyNkG83vxsAJiGzfSsa.jpg",
      "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/sv1xJUazXeYqALzczSZ3O6nkH75.jpg",
    ];
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          "Introducing downloads for you",
          textAlign: TextAlign.center,
          style: TextStyle(color: kWhiteColor, fontSize: 24),
        ),
        const Text(
          "We will download a personalised selection of movies \nand shows for you, so there is always something \nto watch on your device",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width * 1.1,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 83, 82, 82),
                  radius: size.width * 0.4,
                ),
              ),
              DownloadsImageWidget(
                  imageList: imageList[0],
                  angle: 25,
                  size: Size(size.width * 0.4, size.width * 0.58),
                  margin: const EdgeInsets.only(left: 170, bottom: 50)),
              DownloadsImageWidget(
                  imageList: imageList[1],
                  angle: -25,
                  size: Size(size.width * 0.4, size.width * 0.58),
                  margin: const EdgeInsets.only(right: 170, bottom: 50)),
              DownloadsImageWidget(
                  radius: 8,
                  imageList: imageList[2],
                  size: Size(size.width * 0.45, size.width * 0.65),
                  margin: const EdgeInsets.only(bottom: 10))
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
        Padding(
          padding: const EdgeInsets.only(left: 2, right: 2),
          child: SizedBox(
            width: double.infinity,
            child: MaterialButton(
              color: kButtonColorBlue,
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              // ignore: prefer_const_constructors
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: const Text(
                  "Setup",
                  style: TextStyle(
                      color: kWhiteColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 2, right: 2),
          child: MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            color: kButtonColorWhite,
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "See what you can download",
                style: TextStyle(
                    color: kBlackColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
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
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        const Icon(
          Icons.settings,
          color: kWhiteColor,
        ),
        const Text('Smart Downloads')
      ],
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  DownloadsImageWidget({
    Key? key,
    // final double roatation;
    this.angle = 0,
    required this.imageList,
    required this.margin,
    required this.size,
    this.radius = 10,
  }) : super(key: key);

  var angle;
  final Size size;
  final String imageList;
  final EdgeInsets margin;
  final double radius;

  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    return Transform.rotate(
      angle: (angle * pi) / 180,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: Container(
          margin: margin,
          width: size.width,
          height: size.height,
          // color: kBlackColor,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius),
              image: DecorationImage(
                  image: NetworkImage(imageList), fit: BoxFit.cover)),
        ),
      ),
    );
  }
}
