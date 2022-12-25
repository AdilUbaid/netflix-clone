import 'package:flutter/cupertino.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/search/screen_search.dart';
import 'package:netflix_app/presentation/search/widgets/title.dart';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SearchTextTitle(title: "Movies and TV"),
        kHeight,
        Expanded(
            child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 3,
          mainAxisSpacing: 7,
          crossAxisSpacing: 7,
          childAspectRatio: 1 / 1.5,
          children: List.generate(
            20,
            (index) {
              return const MainCard();
            },
          ),
        ))
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image:
              const DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(6)),
    );
  }
}
