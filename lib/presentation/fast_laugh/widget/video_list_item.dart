import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        color: Colors.accents[index % Colors.accents.length],
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // Left side
            children: [
              CircleAvatar(
                backgroundColor: balckColor.withOpacity(0.7),
                child: IconButton(
                  onPressed: (() {}),
                  icon: const Icon(Icons.volume_off),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/1g0dhYtq4irTY1GPXvft6k4YLjm.jpg',
                      ),
                      radius: 30,
                    ),
                  ),
                  VideoActionWidget(icon: Icons.emoji_emotions, title: 'LoL'),
                  VideoActionWidget(icon: Icons.add, title: 'My List'),
                  VideoActionWidget(icon: Icons.share, title: 'Share'),
                  VideoActionWidget(icon: Icons.play_arrow, title: 'Play'),
                ],
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}

class VideoActionWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoActionWidget({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Icon(
            icon,
            color: whiteColor,
            size: 30,
          ),
          Text(
            title,
            style: const TextStyle(
              color: whiteColor,
              fontSize: 15,
            ),
          )
        ],
      ),
    );
  }
}
