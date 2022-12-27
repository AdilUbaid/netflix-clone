import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constants.dart';
import '../../home/widgets/custom_button_widget.dart';
import '../../widgets/video_widgets.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 50,
          height: 410,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                "FEB",
                style: TextStyle(
                    fontSize: 16,
                    color: kGreyColor,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
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
          height: 410,
          // color: Colors.yellow,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VideoWidget(),
              Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "TALL GIRL 2",
                    style: TextStyle(
                        letterSpacing: -5,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const CustomButtonWidget(
                        icon: Icons.notifications_outlined,
                        title: "Remind Me",
                        iconSize: 22,
                        textSize: 12,
                      ),
                      kWidth,
                      const CustomButtonWidget(
                        icon: Icons.info,
                        title: "Info",
                        iconSize: 22,
                        textSize: 13,
                      ),
                      kWidth
                    ],
                  ),
                ],
              ),
              kHeight,
              const Text("Coming on friday"),
              kHeight,
              const Text(
                "Tall girl 2",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              kHeight,
              const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc bibendum dignissim velit vel blandit. Integer a condimentum augue. In convallis purus sed leo dignissim faucibus.",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
