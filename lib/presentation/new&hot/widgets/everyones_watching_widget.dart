import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constant.dart';
import '../../Widgets/video_widget.dart';
import '../../home/widgets/custom_button_widget.dart';

class EveryOnesWatchingWidget extends StatelessWidget {
  const EveryOnesWatchingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight20,
        const VideoCardWidget(),
        kHeight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            CustomButtonWidget(
              icon: Icons.share,
              title: "Share",
              iconSize: 33,
              textSize: 16,
            ),
            kWidth,
            CustomButtonWidget(
              icon: Icons.add,
              title: "My List",
              iconSize: 33,
              textSize: 16,
            ),
            kWidth,
            CustomButtonWidget(
              icon: Icons.play_arrow,
              title: "Play",
              iconSize: 33,
              textSize: 16,
            ),
            kWidth
          ],
        ),
        kHeight,
        const Text(
          "Friends",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        kHeight,
        const Text(
          "This hit sitcom follows the merry misadventures of six 20-something pals they navigate the pitfalls of work, life and love in 1990's",
          style: TextStyle(
            color: greyColor,
            fontSize: 18,
          ),
        ),
        kHeight50,
      ],
    );
  }
}
