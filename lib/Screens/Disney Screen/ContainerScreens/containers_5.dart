import 'package:flutter/material.dart';
import 'package:disney_app/Screens/Disney%20Screen/ContainerScreens/pixar_container.dart';
import 'package:disney_app/Screens/Disney%20Screen/ContainerScreens/star_wars_container.dart';
import '../disney_screen.dart';
import 'disney_container_screen.dart';
import 'marvel_container.dart';
import 'national_container.dart';

class Containers5 extends StatelessWidget {
  const Containers5({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          DisneyContainers(
            image: "assets/icons/Disney_Icon.png",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DisneyContainerScreen(),
                ),
              );
            },
          ),
          DisneyContainers(
            image: "assets/icons/Pixar_icon.png",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PixarContainerScreen(),
                ),
              );
            },
          ),
          DisneyContainersWithoutColor(
            image: "assets/icons/marvel_icon.png",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MarvelContainerScreen(),
                ),
              );
            },
          ),
          DisneyContainers(
            image: "assets/icons/Star wars_icon.png",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const StarWarsContainerScreen(),
                ),
              );
            },
          ),
          DisneyContainers(
            image: "assets/icons/national_icon.png",
            color: Colors.yellow,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NationalContainerScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
