import 'package:flutter/material.dart';

import '../../core/colors/colors.dart';
import '../../core/constants.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      // height: 200,
      child: Stack(
        children: [
          Image.network(
            hotAndNewTempImage,
            fit: BoxFit.fitWidth,
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
    );
  }
}
