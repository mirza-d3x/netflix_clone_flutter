import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constant.dart';
import '../../home/widgets/custom_button_widget.dart';

class ComingSoonData extends StatelessWidget {
  const ComingSoonData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 500,
          child: Column(
            children: const [
              Text(
                "FEB",
                style: TextStyle(
                  fontSize: 18,
                  color: greyColor,
                ),
              ),
              Text(
                "11",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
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
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Tall Girl 2",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        letterSpacing: -5),
                  ),
                  Row(
                    children: const [
                      CustomButtonWidget(
                        icon: CupertinoIcons.bell,
                        title: "Remind Me",
                        iconSize: 25,
                        textSize: 12,
                      ),
                      kWidth,
                      CustomButtonWidget(
                        icon: CupertinoIcons.info,
                        title: "Info",
                        iconSize: 25,
                        textSize: 12,
                      ),
                      kWidth20,
                    ],
                  ),
                ],
              ),
              kHeight,
              const Text("Coming on Friday"),
              kHeight20,
              Row(
                children: [
                  SizedBox(
                    height: 30,
                    width: 70,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          'https://pngimg.com/uploads/netflix/netflix_PNG22.png',
                          height: 30,
                          width: 30,
                        ),
                        const Text(
                          'FILM',
                          style: TextStyle(
                            fontSize: 10,
                            color: greyColor,
                            letterSpacing: 2,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const Text(
                "Tall Girl 2",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              kHeight,
              const Text(
                "Landing the Lead in the school musical is a dream come true for jodi,until the pressure sends her confidence - and her relationship - into a tailspain.",
                style: TextStyle(
                  color: greyColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}