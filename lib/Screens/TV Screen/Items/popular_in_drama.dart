import 'package:flutter/material.dart';
import 'package:disney_app/Screens/HomeScreen/Latest%20&%20Trending/latest_and_treding_card.dart';

class PopularInDrama extends StatelessWidget {
  const PopularInDrama({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          Latest(
            image: "assets/populars/popular in drama (1).jpg",
          ),
          Latest(
            image: "assets/populars/popular in drama (2).jpg",
          ),
          Latest(
            image: "assets/populars/popular in drama (3).jpg",
          ),
          Latest(
            image: "assets/populars/popular in drama (4).jpg",
          ),
          Latest(
            image: "assets/populars/popular in drama (5).jpg",
          ),
          Latest(
            image: "assets/populars/popular in drama (6).jpg",
          ),
          Latest(
            image: "assets/populars/popular in drama (7).jpg",
          ),
          Latest(
            image: "assets/populars/popular in drama (8).jpg",
          ),
          Latest(
            image: "assets/populars/popular in drama (9).jpg",
          ),
          Latest(
            image: "assets/populars/shows (10).jpg",
          ),
        ],
      ),
    );
  }
}
