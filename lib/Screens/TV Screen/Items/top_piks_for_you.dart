import 'package:flutter/material.dart';
import 'package:disney_app/Screens/HomeScreen/Latest%20&%20Trending/latest_and_treding_card.dart';

class TopPicks extends StatelessWidget {
  const TopPicks({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          Latest(
            image: "assets/populars/top pik (1).jpg",
          ),
          Latest(
            image: "assets/populars/top pik (2).jpg",
          ),
          Latest(
            image: "assets/populars/top pik (3).jpg",
          ),
          Latest(
            image: "assets/populars/top pik (4).jpg",
          ),
          Latest(
            image: "assets/populars/top pik (5).jpg",
          ),
          Latest(
            image: "assets/populars/top pik (6).jpg",
          ),
          Latest(
            image: "assets/populars/top pik (8).jpg",
          ),
          Latest(
            image: "assets/populars/top pik (9).jpg",
          ),
          Latest(
            image: "assets/populars/top pik (10).jpg",
          ),
        ],
      ),
    );
  }
}
