// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:disney_app/Screens/HomeScreen/Latest%20&%20Trending/latest_and_treding_card.dart';

class DisneyPlusHostStar extends StatelessWidget {
  const DisneyPlusHostStar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          Latest(
            image: "assets/populars/Disney+ hostar (10).jpg",
          ),
          Latest(
            image: "assets/populars/Disney+ hostar (2).jpg",
          ),
          Latest(
            image: "assets/populars/Disney+ hostar (3).jpg",
          ),
          Latest(
            image: "assets/populars/Disney+ hostar (4).jpg",
          ),
          Latest(
            image: "assets/populars/Disney+ hostar (5).jpg",
          ),
          Latest(
            image: "assets/populars/Disney+ hostar (6).jpg",
          ),
          Latest(
            image: "assets/populars/Disney+ hostar (7).jpg",
          ),
          Latest(
            image: "assets/populars/Disney+ hostar (8).jpg",
          ),
          Latest(
            image: "assets/populars/Disney+ hostar (9).jpg",
          ),
          Latest(
            image: "assets/populars/Disney+ hostar (1).jpg",
          ),
        ],
      ),
    );
  }
}
