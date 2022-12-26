import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';

import '../../core/constants.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar:
              // PreferredSize(
              //     preferredSize: const Size.fromHeight(50),
              //     child: Padding(
              //       padding: const EdgeInsets.all(8.0),
              //       child:
              AppBar(
            toolbarHeight: 40,
            // backgroundColor: kBlackColor,
            actions: [
              const Text(
                'New & Hot',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
              ),
              const Spacer(),
              const Icon(
                Icons.cast,
                color: Colors.white,
              ),
              kWidth,
              PreferredSize(
                preferredSize: const Size.fromHeight(30),
                child: Container(
                  width: 30,
                  height: 30,
                  color: Colors.blue,
                ),
              ),
              kWidth
            ],
            bottom: TabBar(
                isScrollable: true,
                unselectedLabelColor: kWhiteColor,
                labelColor: kBlackColor,
                labelStyle:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                indicator:
                    BoxDecoration(color: kWhiteColor, borderRadius: kRadius30),
                tabs: [
                  Tab(
                    text: '🍿 Coming soon',
                  ),
                  Tab(
                    text: "👀 Everyone's watching",
                  )
                ]),
          ),
          //
          body: TabBarView(children: [
            _buildComingSoon(context),
            _buildEveryonesWatching(),
          ])
          // ignore: prefer_const_literals_to_create_immutables

          ),
    );
  }

  Widget _buildComingSoon(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      children: [
        kHeight,
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 50,
              height: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "FEB",
                    style: TextStyle(
                        fontSize: 16,
                        color: kGreyColor,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "11",
                    style: TextStyle(
                        fontSize: 26,
                        letterSpacing: 5,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(
              width: size.width - 50,
              height: 500,
              // color: Colors.yellow,
              child: Column(
                children: [
                  SizedBox(
                    // color: Colors.red,
                    height: 200,
                    child: Stack(
                      children: [
                        Image.network(
                          hotAndNewTempImage,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: CircleAvatar(
                                backgroundColor: kBlackColor.withOpacity(.6),
                                radius: 19,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.volume_off,
                                      size: 22,
                                    ))),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "TALL GIRL 2",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Column(
                            children: [],
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Column(
              children: [],
            )
          ],
        ),
      ],
    );
  }

  Widget _buildEveryonesWatching() {
    return SizedBox();
  }
}
