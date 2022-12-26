import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import '../../../core/constants.dart';
import 'custom_button_widget.dart';



class BackgroundCard extends StatelessWidget {
  const BackgroundCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 771,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover, image: NetworkImage(kMainImage))),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const CustomButtonWidget(
                          icon: Icons.add,
                          title: 'My List',
                        ),
                        _PlayButton(),
                        const CustomButtonWidget(
                          icon: Icons.info,
                          title: 'Info',
                        ),
                      ],
                    ),
                  ),
                )
              ],
            );
  }
  TextButton _PlayButton() {
    return TextButton.icon(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(kWhiteColor)),
        onPressed: () {},
        icon: const Icon(
          Icons.play_arrow,
          color: kBlackColor,
          size: 30,
        ),
        label: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Play',
            style: TextStyle(fontSize: 20, color: kBlackColor),
          ),
        ));
  }
}