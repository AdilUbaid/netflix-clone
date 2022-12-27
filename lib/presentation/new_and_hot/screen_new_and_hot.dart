import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflix_app/presentation/new_and_hot/widgets/coming_soon_widget.dart';

import '../../core/constants.dart';
import '../widgets/video_widgets.dart';
import 'widgets/everyones_watching_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
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
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                indicator:
                    BoxDecoration(color: kWhiteColor, borderRadius: kRadius30),
                // ignore: prefer_const_literals_to_create_immutables
                tabs: [
                  const Tab(
                    text: '🍿 Coming soon',
                  ),
                  const Tab(
                    text: "👀 Everyone's watching",
                  )
                ]),
          ),
          //
          body: TabBarView(children: [
            _buildComingSoon(),
            _buildEveryonesWatching(),
          ])
          // ignore: prefer_const_literals_to_create_immutables

          ),
    );
  }

  Widget _buildComingSoon() {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Column(
          children: const [
            kHeight,
            ComingSoonWidget(),
          ],
        );
      },
      itemCount: 10,
    );
  }

  Widget _buildEveryonesWatching() {
    return ListView.builder(
      itemBuilder: (context, index) => EveryonesWatchigWidget(),
      itemCount: 10,
    );
  }
}

