import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import '../../../core/constant.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 30,
              height: 150,
            ),
            Container(
              width: 150,
              height: 180,
              decoration: BoxDecoration(
                borderRadius: kRadius10,
                image: const DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: NetworkImage(
                    'https://b4blaze.com/wp-content/uploads/2022/03/pZ4fVh4NG18D4mbf0lJGoAzfT0E-200x300.jpg',
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: 5,
          top: 22,
          child: BorderedText(
            strokeWidth: 5,
            strokeColor: Colors.white,
            child: Text(
              '${index + 1}',
              style: const TextStyle(
                fontSize: 160,
                color: Colors.black,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        )
      ],
    );
  }
}
