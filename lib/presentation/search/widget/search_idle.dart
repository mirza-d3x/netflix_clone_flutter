import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constant.dart';
import 'package:netflix_app/presentation/search/widget/search_title.dart';

const imageUrl =
    'https://www.themoviedb.org/t/p/w250_and_h141_face/zrMCOQnzIgGyBtGCdMPom9bOw0r.jpg';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTextTitle(searchTitle: 'Top Searches',),
        kHeight,
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: ((context, index) => const TopSearchItemTile()),
            separatorBuilder: ((context, index) => kHeight20),
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}



class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.35,
          height: 65,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                imageUrl,
              ),
            ),
          ),
        ),
        const Expanded(
          child: Text(
            'Movie Name',
            style: TextStyle(
                color: whiteColor, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        const CircleAvatar(
          backgroundColor: balckColor,
          radius: 25,
          child: Icon(
            CupertinoIcons.play_circle,
            size: 35,
          ),
        )
      ],
    );
  }
}
