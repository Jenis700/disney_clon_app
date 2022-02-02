import 'package:flutter/material.dart';
import 'package:disney_app/Screens/HomeScreen/Latest%20&%20Trending/latest_and_treding_card.dart';

class PopularShow extends StatelessWidget {
  const PopularShow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          Latest(
            image: "assets/populars/shows (1).jpg",
          ),
          Latest(
            image: "assets/populars/shows (2).jpg",
          ),
          Latest(
            image: "assets/populars/shows (3).jpg",
          ),
          Latest(
            image: "assets/populars/shows (4).jpg",
          ),
          Latest(
            image: "assets/populars/shows (5).jpg",
          ),
          Latest(
            image: "assets/populars/shows (6).jpg",
          ),
          Latest(
            image: "assets/populars/shows (7).jpg",
          ),
          Latest(
            image: "assets/populars/shows (8).jpg",
          ),
          Latest(
            image: "assets/populars/shows (9).jpg",
          ),
          Latest(
            image: "assets/populars/shows (10).jpg",
          ),
        ],
      ),
    );
  }
}
