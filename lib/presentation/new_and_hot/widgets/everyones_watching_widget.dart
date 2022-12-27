import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constants.dart';
import '../../home/widgets/custom_button_widget.dart';
import '../../widgets/video_widgets.dart';

class EveryonesWatchigWidget extends StatelessWidget {
  const EveryonesWatchigWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight,
        const Text(
          "Friends",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        kHeight,
        const Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc bibendum dignissim velit vel blandit. Integer a condimentum augue. In convallis purus sed leo dignissim faucibus.",
          style: TextStyle(fontSize: 15, color: kGreyColor),
        ),
        kHeight50,
        const VideoWidget(),
        kHeight,
        Row(mainAxisAlignment: MainAxisAlignment.end, children: const [
          CustomButtonWidget(
            icon: Icons.send,
            title: "Share",
            iconSize: 26,
            textSize: 14,
          ),
          kWidth,
          CustomButtonWidget(
            icon: Icons.add,
            title: "My list",
            iconSize: 26,
            textSize: 14,
          ),
          kWidth,
          CustomButtonWidget(
            icon: Icons.play_arrow,
            title: "Play",
            iconSize: 26,
            textSize: 14,
          ),
          kWidth,
        ])
      ],
    );
  }
}
