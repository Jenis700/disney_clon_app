import 'package:flutter/material.dart';

import 'continue_watch_card.dart';

class ContinueWatching extends StatelessWidget {
  const ContinueWatching({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          ContinueWatchingCard(
            image: "assets/image/continue watch1.jpg",
          ),
          ContinueWatchingCard(
            image: "assets/image/continue watch2.jpg",
          ),
          ContinueWatchingCard(
            image: "assets/image/continue watch3.jpg",
          ),
          ContinueWatchingCard(
            image: "assets/image/continue watch4.jpg",
          ),
          ContinueWatchingCard(
            image: "assets/image/continue watch5.jpg",
          ),
          ContinueWatchingCard(
            image: "assets/image/continue watch6.jpg",
          ),
          ContinueWatchingCard(
            image: "assets/image/continue watch7.jpg",
          ),
          ContinueWatchingCard(
            image: "assets/image/continue watch8.jpg",
          ),
          ContinueWatchingCard(
            image: "assets/image/continue watch9.jpg",
          ),
          ContinueWatchingCard(
            image: "assets/image/continue watch10.jpg",
          ),
        ],
      ),
    );
  }
}
