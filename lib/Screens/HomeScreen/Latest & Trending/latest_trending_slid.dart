import 'package:flutter/material.dart';

import 'latest_and_treding_card.dart';

class LatestAndTrending extends StatelessWidget {
  const LatestAndTrending({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          Latest(
            image: "assets/LongImage/action_movies (10).jpg",
          ),
          Latest(
            image: "assets/LongImage/action_movies (9).jpg",
          ),
          Latest(
            image: "assets/LongImage/action_movies (8).jpg",
          ),
          Latest(
            image: "assets/LongImage/action_movies (7).jpg",
          ),
          Latest(
            image: "assets/LongImage/action_movies (6).jpg",
          ),
          Latest(
            image: "assets/LongImage/action_movies (5).jpg",
          ),
          Latest(
            image: "assets/LongImage/action_movies (4).jpg",
          ),
          Latest(
            image: "assets/LongImage/action_movies (3).jpg",
          ),
          Latest(
            image: "assets/LongImage/action_movies (2).jpg",
          ),
          Latest(
            image: "assets/LongImage/action_movies (1).jpeg",
          ),
        ],
      ),
    );
  }
}
