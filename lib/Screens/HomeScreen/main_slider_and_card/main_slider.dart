import 'package:flutter/cupertino.dart';
import 'package:disney_app/Screens/HomeScreen/main_slider_and_card/slider_card.dart';

class MainSlider extends StatelessWidget {
  const MainSlider({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SliderCard(
            size: size,
            gif: "assets/.capten.gif",
            name: "Steve Rorgers",
          ),
          SliderCard(
            size: size,
            gif: "assets/.hulk.gif",
            name: "Steve Rorgers",
          ),
          SliderCard(
            size: size,
            gif: "assets/.ironman.gif",
            name: "Steve Rorgers",
          ),
          SliderCard(
            size: size,
            gif: "assets/.loki.gif",
            name: "Steve Rorgers",
          ),
          SliderCard(
            size: size,
            gif: "assets/.maxresdefault.jpg",
            name: "Steve Rorgers",
          ),
          SliderCard(
            size: size,
            gif: "assets/.Spiderman.gif",
            name: "Steve Rorgers",
          ),
          SliderCard(
            size: size,
            gif: "assets/.thor.gif",
            name: "Steve Rorgers",
          ),
        ],
      ),
    );
  }
}
