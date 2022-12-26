import 'package:flutter/material.dart';

import '../../core/constants.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        width: 150,
        height: 250,
        // color: Colors.red,
        decoration: BoxDecoration(
          borderRadius: kRadius10,
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/tDynwDj3pvexrEQ8wb0uy8EdcGQ.jpg',
            ),
          ),
        ),
      ),
    );
  }
}
