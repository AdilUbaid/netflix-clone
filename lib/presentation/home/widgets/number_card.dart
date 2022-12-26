import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';

import '../../../core/constants.dart';

class NumberCard extends StatelessWidget {
  final int index;

  const NumberCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Stack(
        children: [
          Row(
            children: [
              SizedBox(
                width: 45,
                height: 150,
              ),
              Container(
                width: 150,
                height: 250,
                // color: Colors.red,
                decoration: BoxDecoration(
                  borderRadius: kRadius10,
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/7l3war94J4tRyWUiLAGokr3ViF2.jpg',
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            left: 10,
            bottom: -22,
            child: BorderedText(
              strokeColor: kWhiteColor,
              strokeWidth: 5,
              child: Text(
                "${index + 1}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kBlackColor,
                  fontSize: 110,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
