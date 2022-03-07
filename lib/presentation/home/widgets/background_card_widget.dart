import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constant.dart';
import 'custom_button_widget.dart';

class BackGroundCard extends StatelessWidget {
  const BackGroundCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 640,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(kMainImage),
            ),
          ),
        ),
        Positioned(
          top: 580,
          bottom: 0,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const CustomButtonWidget(
                icon: Icons.add,
                title: 'My List',
              ),
              _playButton(),
              const CustomButtonWidget(
                icon: Icons.info,
                title: 'Info',
              ),
            ],
          ),
        )
      ],
    );
  }
}

TextButton _playButton() {
  return TextButton.icon(
    onPressed: () {},
    icon: const Icon(
      Icons.play_arrow,
      size: 30,
      color: balckColor,
    ),
    label: const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        'Play',
        style: TextStyle(
          fontSize: 20,
          color: balckColor,
        ),
      ),
    ),
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(
        Colors.white,
      ),
    ),
  );
}
