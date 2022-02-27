import 'package:flutter/material.dart';
import 'package:netflix_app/core/constant.dart';
import 'package:netflix_app/presentation/search/widget/search_title.dart';

const imageURl1 =
    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/tlZpSxYuBRoVJBOpUrPdQe9FmFq.jpg';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(searchTitle: 'Movies & Tv'),
        kHeight,
        Expanded(
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 1 / 1.4,
            children: List.generate(21, (index) {
              return const MainCard();
            }),
          ),
        )
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: const DecorationImage(
            image: NetworkImage(
              imageURl1,
            ),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(8)),
    );
  }
}
