import 'package:flutter/material.dart';
import 'package:disney_app/Screens/HomeScreen/continue/continue_watch_card.dart';

class Downloads extends StatelessWidget {
  const Downloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          ContinueWatchingCard(
            image: "assets/LongImage/action_movies (2).jpg",
          ),
          ContinueWatchingCard(
            image: "assets/LongImage/action_movies (4).jpg",
          ),
          ContinueWatchingCard(
            image: "assets/image/continue watch3.jpg",
          ),
          ContinueWatchingCard(
            image: "assets/LongImage/action_movies (9).jpg",
          ),
          ContinueWatchingCard(
            image: "assets/image/continue watch6.jpg",
          ),
          ContinueWatchingCard(
            image: "assets/image/continue watch5.jpg",
          ),
          ContinueWatchingCard(
            image: "assets/LongImage/action_movies (5).jpg",
          ),
          ContinueWatchingCard(
            image: "assets/image/continue watch7.jpg",
          ),
          ContinueWatchingCard(
            image: "assets/image/continue watch2.jpg",
          ),
          ContinueWatchingCard(
            image: "assets/image/continue watch1.jpg",
          ),
        ],
      ),
    );
  }
}
