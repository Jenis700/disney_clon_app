import 'package:flutter/material.dart';
import 'package:disney_app/Screens/HomeScreen/Latest%20&%20Trending/latest_and_treding_card.dart';

class BestOfKids extends StatelessWidget {
  const BestOfKids({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          Latest(
            image: "assets/populars/best kids (1).jpg",
          ),
          Latest(
            image: "assets/populars/best kids (2).jpg",
          ),
          Latest(
            image: "assets/populars/best kids (3).jpg",
          ),
          Latest(
            image: "assets/populars/best kids (4).jpg",
          ),
          Latest(
            image: "assets/populars/best kids (5).jpg",
          ),
          Latest(
            image: "assets/populars/best kids (6).jpg",
          ),
          Latest(
            image: "assets/populars/best kids (7).jpg",
          ),
          Latest(
            image: "assets/populars/best kids (8).jpg",
          ),
          Latest(
            image: "assets/populars/best kids (9).jpg",
          ),
          Latest(
            image: "assets/populars/best kids (10).jpg",
          ),
        ],
      ),
    );
  }
}
