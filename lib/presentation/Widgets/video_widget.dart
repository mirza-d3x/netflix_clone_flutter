import 'package:flutter/material.dart';

import '../../core/colors/colors.dart';
import '../../core/constant.dart';

class VideoCardWidget extends StatelessWidget {
  const VideoCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 200,
          width: double.infinity,
          child: Image.network(
            newAndHotTempImage,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: CircleAvatar(
            radius: 25,
            backgroundColor: balckColor.withOpacity(0.7),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.volume_off,
                color: whiteColor,
                size: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
