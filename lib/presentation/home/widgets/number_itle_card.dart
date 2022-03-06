import 'package:flutter/material.dart';

import '../../../core/constant.dart';
import '../../Widgets/main_title.dart';
import 'number_card.dart';

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight,
        const MainTitle(
          title: 'Top 10 Tv Shows in India Today',
        ),
        LimitedBox(
          maxHeight: 180,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              (index) => NumberCard(
                Index: index,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
