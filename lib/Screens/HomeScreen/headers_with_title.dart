import 'package:flutter/material.dart';

import '../../componants.dart';

class HeaderWithTitle extends StatelessWidget {
  const HeaderWithTitle({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(
              color: kTextColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.7,
              wordSpacing: 1,
            ),
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: kTextColor.withOpacity(0.4),
            size: 20,
          ),
        ],
      ),
    );
  }
}
