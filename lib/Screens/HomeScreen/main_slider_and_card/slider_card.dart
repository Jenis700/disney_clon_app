import 'package:flutter/material.dart';

import '../../../componants.dart';

class SliderCard extends StatelessWidget {
  const SliderCard({
    Key? key,
    required this.size,
    required this.name,
    required this.gif,
  }) : super(key: key);

  final Size size;
  final String name;
  final String gif;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Stack(
        children: [
          SizedBox(
            height: size.height * 0.23,
            width: size.width * 0.9,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              child: Image.asset(
                gif,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: size.height * 0.23,
            width: size.width * 0.9,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(0.6),
                ],
                stops: const [0.5, 0.8],
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              top: 120,
              left: 15,
              right: 15,
            ),
            height: size.height * 0.23,
            width: size.width * 0.9,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    color: kTextColor,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    wordSpacing: 1,
                    fontSize: 20,
                  ),
                ),
                const Icon(
                  Icons.volume_off,
                  color: kTextColor,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
