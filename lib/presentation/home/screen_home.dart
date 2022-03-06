import 'package:flutter/material.dart';
import 'package:netflix_app/presentation/home/widgets/number_card.dart';
import 'package:netflix_app/presentation/home/widgets/number_itle_card.dart';
import '../../core/constant.dart';
import '../Widgets/main_title.dart';
import '../Widgets/main_title_card.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: const [
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
        ),
      ),
    );
  }
}
