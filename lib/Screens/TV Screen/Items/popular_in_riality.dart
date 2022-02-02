import 'package:flutter/material.dart';
import 'package:disney_app/Screens/HomeScreen/Latest%20&%20Trending/latest_and_treding_card.dart';

class PopularInRiality extends StatelessWidget {
  const PopularInRiality({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          Latest(
            image: "assets/populars/popular in riality (1).jpg",
          ),
          Latest(
            image: "assets/populars/popular in riality (2).jpg",
          ),
          Latest(
            image: "assets/populars/popular in riality (3).jpg",
          ),
          Latest(
            image: "assets/populars/popular in riality (4).jpg",
          ),
          Latest(
            image: "assets/populars/popular in riality (5).jpg",
          ),
          Latest(
            image: "assets/populars/popular in riality (6).jpg",
          ),
          Latest(
            image: "assets/populars/popular in riality (7).jpg",
          ),
          Latest(
            image: "assets/populars/popular in riality (8).jpg",
          ),
          Latest(
            image: "assets/populars/popular in riality (9).jpg",
          ),
          Latest(
            image: "assets/populars/popular in riality (10).jpg",
          ),
        ],
      ),
    );
  }
}
