import 'package:flutter/material.dart';

import '../../../componants.dart';

class ContinueWatchingCard extends StatelessWidget {
  const ContinueWatchingCard({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    double heights = MediaQuery.of(context).size.height * 0.12;
    double widths = MediaQuery.of(context).size.width * 0.44;
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Stack(
        children: [
          SizedBox(
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
          Container(
            height: heights,
            width: widths,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(0.8),
                ],
                stops: const [0.5, 1],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              top: 60,
              right: 10,
            ),
            height: heights,
            width: widths,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.play_arrow,
                    color: kTextColor,
                    size: 20,
                  ),
                ),
                const Icon(
                  Icons.volume_off,
                  color: kTextColor,
                  size: 20,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
