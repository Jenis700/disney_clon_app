import 'package:flutter/material.dart';

class ShowsYouWatch extends StatelessWidget {
  const ShowsYouWatch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          ShowsYouWatchCard(
            image: "assets/populars/best kids (1).jpg",
          ),
          ShowsYouWatchCard(
            image: "assets/populars/shows (9).jpg",
          ),
          ShowsYouWatchCard(
            image: "assets/populars/best kids (3).jpg",
          ),
          ShowsYouWatchCard(
            image: "assets/populars/shows (8).jpg",
          ),
          ShowsYouWatchCard(
            image: "assets/populars/shows (5).jpg",
          ),
          ShowsYouWatchCard(
            image: "assets/populars/best kids (6).jpg",
          ),
          ShowsYouWatchCard(
            image: "assets/populars/shows (7).jpg",
          ),
          ShowsYouWatchCard(
            image: "assets/LongImage/action_movies (5).jpg",
          ),
          ShowsYouWatchCard(
            image: "assets/populars/best kids (10).jpg",
          ),
          ShowsYouWatchCard(
            image: "assets/populars/shows (10).jpg",
          ),
        ],
      ),
    );
  }
}

class ShowsYouWatchCard extends StatelessWidget {
  const ShowsYouWatchCard({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    double heights = MediaQuery.of(context).size.height * 0.15;
    double widths = MediaQuery.of(context).size.width * 0.45;
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: SizedBox(
        height: heights,
        width: widths,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
