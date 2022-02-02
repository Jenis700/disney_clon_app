import 'package:flutter/material.dart';
import 'package:disney_app/Screens/HomeScreen/Latest%20&%20Trending/latest_and_treding_card.dart';

class PopularInCrime extends StatelessWidget {
  const PopularInCrime({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          Latest(
            image: "assets/populars/popular in crime (1).jpg",
          ),
          Latest(
            image: "assets/populars/popular in crime (2).jpg",
          ),
          Latest(
            image: "assets/populars/popular in crime (3).jpg",
          ),
          Latest(
            image: "assets/populars/popular in crime (4).jpg",
          ),
          Latest(
            image: "assets/populars/popular in crime (5).jpg",
          ),
          Latest(
            image: "assets/populars/popular in crime (6).jpg",
          ),
          Latest(
            image: "assets/populars/popular in crime (7).jpg",
          ),
          Latest(
            image: "assets/populars/popular in crime (8).jpg",
          ),
          Latest(
            image: "assets/populars/popular in crime (9).jpg",
          ),
          Latest(
            image: "assets/populars/popular in crime (10).jpg",
          ),
        ],
      ),
    );
  }
}
