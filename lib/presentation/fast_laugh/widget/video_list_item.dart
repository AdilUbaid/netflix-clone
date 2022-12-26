import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';

class VideoListItem extends StatelessWidget {
  final int index;

  const VideoListItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                //left side
                CircleAvatar(
                    backgroundColor: kBlackColor.withOpacity(.6),
                    radius: 25,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.volume_off,
                          size: 27,
                        ))),
                //right side

                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const CircleAvatar(
                      radius: 21,
                      backgroundImage: NetworkImage(
                          'https://cdn.thetealmango.com/wp-content/uploads/2021/07/light-e1626271820100.jpg'),
                    ),
                    const VideoActionsWidegt(
                        icon: Icons.emoji_emotions, title: 'LOL'),
                    const VideoActionsWidegt(icon: Icons.add, title: 'My list'),
                    const VideoActionsWidegt(icon: Icons.share, title: 'Share'),
                    const VideoActionsWidegt(
                        icon: Icons.play_arrow, title: 'Play')
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActionsWidegt extends StatelessWidget {
  const VideoActionsWidegt(
      {super.key, required this.icon, required this.title});

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        kHeight20,
        Icon(
          icon,
          color: kWhiteColor,
          size: 30,
        ),
        Text(
          title,
          style: TextStyle(color: kWhiteColor, fontSize: 16),
        )
      ],
    );
  }
}
