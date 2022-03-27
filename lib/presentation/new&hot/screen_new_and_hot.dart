import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constant.dart';
import 'package:netflix_app/presentation/new&hot/widgets/coming_soon_new_and_hot.dart';
import 'package:netflix_app/presentation/new&hot/widgets/everyones_watching_widget.dart';
import '../Widgets/video_widget.dart';
import '../home/widgets/custom_button_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: AppBar(
            title: const Text(
              'New & Hot',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              const Icon(
                Icons.cast,
                color: Colors.white,
                size: 30,
              ),
              kWidth,
              Container(
                height: 30,
                width: 30,
                color: Colors.blue,
              ),
              kWidth,
            ],
            bottom: TabBar(
                labelColor: balckColor,
                unselectedLabelColor: whiteColor,
                isScrollable: true,
                labelStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                indicator: BoxDecoration(
                  color: whiteColor,
                  borderRadius: kRadius30,
                ),
                tabs: const [
                  Tab(
                    text: "🍿 Coming Soon",
                  ),
                  Tab(
                    text: "👀 Everyone's Watching",
                  )
                ]),
          ),
        ),
        body: TabBarView(
          children: [
            _buildComingSoon(),
            _buildEveryonesWatching(),
          ],
        ),
      ),
    );
  }
}

Widget _buildComingSoon() {
  return ListView.builder(
    itemCount: 10,
    itemBuilder: (BuildContext context, index) => const ComingSoonData(),
  );
}

Widget _buildEveryonesWatching() {
  return const EveryOnesWatching();
}

class EveryOnesWatching extends StatelessWidget {
  const EveryOnesWatching({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: ((BuildContext context, index) =>
          const EveryOnesWatchingWidget()),
      itemCount: 10,
    );
  }
}
