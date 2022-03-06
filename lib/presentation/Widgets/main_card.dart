import 'package:flutter/material.dart';
import 'package:netflix_app/core/constant.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.symmetric(horizontal: 30),
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 150,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: kRadius10,
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            'https://m.media-amazon.com/images/M/MV5BN2UyMmI4MGEtOTMzMy00NTNjLWFmZWUtMzI1NzQ5NzU0NzBjXkEyXkFqcGdeQXVyMTI1NDAzMzM0._V1_.jpg',
          ),
        ),
      ),
    );
  }
}
