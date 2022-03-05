import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constant.dart';
import 'package:netflix_app/presentation/Widgets/app_bar_widget.dart';

import 'widgets/downloads_Images_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({Key? key}) : super(key: key);
  final _widgetList = [
    const _SmartDownloads(),
    const Section2(),
    const Section3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        child: AppBarWidget(
          title: 'Downloads',
        ),
        preferredSize: Size.fromHeight(50),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, index) => _widgetList[index],
        separatorBuilder: (context, index) => const SizedBox(height: 25),
        itemCount: _widgetList.length,
      ),
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.settings,
          color: whiteColor,
        ),
        kWidth,
        Text('Smart Downloads'),
      ],
    );
  }
}

class Section2 extends StatelessWidget {
  const Section2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List imageList = [
      'https://m.media-amazon.com/images/I/51gPKlYLbjL.jpg',
      'https://img.indiefolio.com/fit-in/1100x0/filters:format(webp):fill(transparent)/project/body/Memories_47081444378200.jpg',
      'https://www.filmiforest.com/img/poster_image/kurup-poster.jpg',
    ];
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          'Introducing Downloads for you',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: whiteColor,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        kHeight,
        const Text(
          "We will download a personalised selection of\nmovies and shows for you, so there's \n always something to watch on your\n device",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 15,
            color: Colors.grey,
          ),
        ),
        kHeight,
        SizedBox(
          width: size.width,
          height: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey.withOpacity(0.5),
                radius: size.width * 0.40,
              ),
              DwonloadsImageWidget(
                imageList: imageList[0],
                margin: const EdgeInsets.only(left: 180, top: 35),
                angle: 20,
                size: Size(size.width * 0.35, size.width * 0.55),
                radius: 5,
              ),
              DwonloadsImageWidget(
                imageList: imageList[1],
                margin: const EdgeInsets.only(right: 180, top: 35),
                angle: -20,
                size: Size(size.width * 0.35, size.width * 0.55),
                radius: 5,
              ),
              DwonloadsImageWidget(
                imageList: imageList[2],
                margin: const EdgeInsets.only(bottom: 0),
                size: Size(size.width * 0.40, size.width * 0.65),
                radius: 5,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Setup',
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            onPressed: (() {}),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            color: buttonColorBlue,
          ),
        ),
        kHeight,
        SizedBox(
          width: 315,
          child: MaterialButton(
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'See what you can Download',
                style: TextStyle(
                  color: balckColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            onPressed: (() {}),
            color: whiteColor,
          ),
        ),
      ],
    );
  }
}
