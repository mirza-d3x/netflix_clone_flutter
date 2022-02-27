import 'package:flutter/material.dart';

class SearchTextTitle extends StatelessWidget {
  final String searchTitle;
  const SearchTextTitle({
    Key? key,
    required this.searchTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      searchTitle,
      style: const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
