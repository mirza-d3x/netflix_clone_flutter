import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_app/core/constant.dart';
import 'package:netflix_app/presentation/home/widgets/background_card_widget.dart';
import 'package:netflix_app/presentation/home/widgets/number_itle_card.dart';
import '../Widgets/main_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollNotifier,
        builder: (BuildContext context, index, _) {
          return NotificationListener<UserScrollNotification>(
            onNotification: ((notification) {
              final ScrollDirection direction = notification.direction;
              print(direction);
              if (direction == ScrollDirection.reverse) {
                scrollNotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollNotifier.value = true;
              }
              return true;
            }),
            child: Stack(children: [
              ListView(
                children: [
                  Column(
                    children: const [
                      BackGroundCard(),
                      MainTitleCard(
                        title: 'Relseased in th past year',
                      ),
                      MainTitleCard(
                        title: 'Trending Now',
                      ),
                      NumberTitleCard(),
                      MainTitleCard(
                        title: 'Tense Dramas',
                      ),
                      MainTitleCard(
                        title: 'South Indian Cinema',
                      ),
                    ],
                  ),
                ],
              ),

              
              // show appbar when scroll downs
              scrollNotifier.value == true
                  ? AnimatedContainer(
                      duration: const Duration(milliseconds: 10000),
                      width: double.infinity,
                      height: 90,
                      color: Colors.black.withOpacity(0.5),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.network(
                                'https://pngimg.com/uploads/netflix/netflix_PNG22.png',
                                height: 70,
                                width: 70,
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.cast,
                                color: Colors.white,
                                size: 30,
                              ),
                              kWidth,
                              Container(
                                color: Colors.blue,
                                height: 30,
                                width: 30,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Tv Shows',
                                style: kHomeTitleText,
                              ),
                              Text(
                                'Movies',
                                style: kHomeTitleText,
                              ),
                              Text(
                                'Categories',
                                style: kHomeTitleText,
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  : kHeight,
            ]),
          );
        },
      ),
    );
  }
}
