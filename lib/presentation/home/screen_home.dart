import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_app/core/constants.dart';

import '../widgets/main_title_card.dart';

import 'widgets/background_card.dart';
import 'widgets/number_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
      valueListenable: scrollNotifier,
      builder: (context, index, _) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              // print(direction);
              if (direction == ScrollDirection.reverse) {
                scrollNotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollNotifier.value = true;
              }
              return true;
            },
            child: Stack(
              children: [
                ListView(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const BackgroundCard(),
                    const MainTitleCars(
                      title: 'Released in the past year',
                    ),
                    kHeight,
                    const MainTitleCars(
                      title: 'Trednding Now',
                    ),
                    kHeight,
                    const NumberTitleCard(),
                    kHeight,
                    const MainTitleCars(
                      title: 'Tense Dramas',
                    ),
                    kHeight,
                    const MainTitleCars(
                      title: 'South Indian Cinema',
                    ),
                    kHeight,
                  ],
                ),
                scrollNotifier.value
                    ? AnimatedContainer(
                        duration: Duration(milliseconds: 1000),
                        width: double.infinity,
                        height: 85,
                        color: Colors.black26,
                        child: Column(
                          children: [
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.network(
                                  'https://www.edigitalagency.com.au/wp-content/uploads/Netflix-N-Symbol-logo-red-transparent-RGB-png.png',
                                  width: 60,
                                  height: 60,
                                ),
                                const Spacer(),
                                const Icon(
                                  Icons.cast,
                                  color: Colors.white,
                                ),
                                kWidth,
                                Container(
                                  width: 30,
                                  height: 30,
                                  color: Colors.blue,
                                ),
                                kWidth
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  "TV Shows",
                                  style: kHOmeTitleText,
                                ),
                                Text(
                                  "Movies",
                                  style: kHOmeTitleText,
                                ),
                                Text(
                                  "Categories",
                                  style: kHOmeTitleText,
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    : kHeight
              ],
            ),
          ),
        );
      },
    ));
  }
}
