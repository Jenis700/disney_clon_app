import 'package:flutter/material.dart';

class Latest extends StatelessWidget {
  const Latest({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    double heights = MediaQuery.of(context).size.height * 0.18;
    double widths = MediaQuery.of(context).size.width * 0.285;
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
