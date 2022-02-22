import 'package:flutter/material.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: (context, int newIndex, _) {
        return BottomNavigationBar(
          currentIndex: newIndex,
          onTap: (index) {
            indexChangeNotifier.value = index;
          },
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          selectedIconTheme: const IconThemeData(color: Colors.white),
          unselectedIconTheme: const IconThemeData(color: Colors.grey),
          items: const [
            // Navigation Bar
            // Home
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home'),

            // New & Hot
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.collections,
                ),
                label: 'New & Hot'),

            // Fast Laughs
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.emoji_emotions,
                ),
                label: 'Fast Laughs'),

            // Search
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                label: 'Search'),

            // Downloads
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.download,
                ),
                label: 'Downloads'),
          ],
        );
      },
    );
  }
}
