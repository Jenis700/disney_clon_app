import 'package:flutter/material.dart';

class PopularChannel extends StatelessWidget {
  const PopularChannel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          PopularChannelCard(
            image: "assets/populars/channels (9).jpg",
          ),
          PopularChannelCard(
            image: "assets/populars/channels (1).jpg",
          ),
          PopularChannelCard(
            image: "assets/populars/channels (3).jpg",
          ),
          PopularChannelCard(
            image: "assets/populars/channels (4).jpg",
          ),
          PopularChannelCard(
            image: "assets/populars/channels (5).jpg",
          ),
          PopularChannelCard(
            image: "assets/populars/channels (6).jpg",
          ),
          PopularChannelCard(
            image: "assets/populars/channels (7).jpg",
          ),
          PopularChannelCard(
            image: "assets/populars/channels (8).jpg",
          ),
          PopularChannelCard(
            image: "assets/populars/channels (2).jpg",
          ),
        ],
      ),
    );
  }
}

class PopularChannelCard extends StatelessWidget {
  const PopularChannelCard({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    double heights = MediaQuery.of(context).size.height * 0.12;
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
