import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:disney_app/Screens/HomeScreen/headers_with_title.dart';
import 'package:disney_app/Screens/HomeScreen/main_slider_and_card/main_slider.dart';
import 'package:disney_app/Screens/TV%20Screen/Items/best_of_kids.dart';
import 'package:disney_app/Screens/TV%20Screen/Items/disney+_hoststar.dart';
import 'package:disney_app/Screens/TV%20Screen/Items/popular_channels.dart';
import 'package:disney_app/Screens/TV%20Screen/Items/popular_in_crime.dart';
import 'package:disney_app/Screens/TV%20Screen/Items/popular_in_drama.dart';
import 'package:disney_app/Screens/TV%20Screen/Items/popular_in_riality.dart';
import 'package:disney_app/Screens/TV%20Screen/Items/popular_shows.dart';
import 'package:disney_app/Screens/TV%20Screen/Items/shows_you_watch.dart';
import 'package:disney_app/Screens/TV%20Screen/Items/top_piks_for_you.dart';
import '../../componants.dart';
import 'ContainerScreens/containers_5.dart';

class DisneyScreen extends StatefulWidget {
  const DisneyScreen({Key? key}) : super(key: key);

  @override
  State<DisneyScreen> createState() => _DisneyScreenState();
}

class _DisneyScreenState extends State<DisneyScreen>
    with SingleTickerProviderStateMixin {
  late ScrollController _scrolViewController;
  late AnimationController _animationBtnController;

  bool _showAppBar = true;

  bool _scrolingUp = false;

  bool isMenu = false;

  @override
  void initState() {
    super.initState();
    _animationBtnController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    _scrolViewController = ScrollController();
    _scrolViewController.addListener(() {
      if (_scrolViewController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (!_scrolingUp) {
          _showAppBar = false;
          _scrolingUp = true;
          setState(() {});
        }
      }

      if (_scrolViewController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (_scrolingUp) {
          _showAppBar = true;
          _scrolingUp = false;
          setState(() {});
        }
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrolViewController.addListener(() {});
    _scrolViewController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBgColor,
      body: SafeArea(
        child: Column(
          children: [
            animationAppBar(),
            Expanded(
              child: SingleChildScrollView(
                controller: _scrolViewController,
                child: Column(
                  children: [
                    SizedBox(height: kDefaultPadding),
                    MainSlider(size: size),
                    SizedBox(height: kDefaultPadding),
                    const Containers5(), SizedBox(height: kDefaultPadding),
                    const HeaderWithTitle(text: "Recommended For You"),
                    SizedBox(height: kDefaultPadding / 2),
                    const PopularInCrime(),
                    SizedBox(height: kDefaultPadding),
                    //popular in drama
                    const HeaderWithTitle(text: "New to Disney+"),
                    SizedBox(height: kDefaultPadding / 2),
                    const PopularInDrama(),
                    SizedBox(height: kDefaultPadding),

                    //popular in riality
                    const HeaderWithTitle(text: "Disney+ Originals"),
                    SizedBox(height: kDefaultPadding / 2),
                    const PopularInRiality(),
                    SizedBox(height: kDefaultPadding),

                    //best of kids
                    const HeaderWithTitle(text: "Holiday Specials"),
                    SizedBox(height: kDefaultPadding / 2),
                    const BestOfKids(),
                    SizedBox(height: kDefaultPadding),

                    //disney+ hoststar
                    const HeaderWithTitle(text: "Trending"),
                    SizedBox(height: kDefaultPadding / 2),
                    const DisneyPlusHostStar(),
                    SizedBox(height: kDefaultPadding),

                    //popular channels
                    const HeaderWithTitle(text: "Reimagined Classics"),
                    SizedBox(height: kDefaultPadding / 2),
                    const PopularChannel(),
                    SizedBox(height: kDefaultPadding),

                    //shows you watch
                    const HeaderWithTitle(text: "Beasts and Monsters"),
                    SizedBox(height: kDefaultPadding / 2),
                    const ShowsYouWatch(),
                    SizedBox(height: kDefaultPadding),

                    //popular shows
                    const HeaderWithTitle(text: "Inspired by True Stories"),
                    SizedBox(height: kDefaultPadding / 2),
                    const PopularShow(),
                    SizedBox(height: kDefaultPadding),

                    //top picks
                    const HeaderWithTitle(text: "Nostalgic Movies"),
                    SizedBox(height: kDefaultPadding / 2),
                    const TopPicks(),
                    SizedBox(height: kDefaultPadding),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // //popular in crime

// for appbar .........................................................
  AnimatedContainer animationAppBar() {
    return AnimatedContainer(
      height: _showAppBar ? 68.0 : 0.0,
      duration: const Duration(milliseconds: 200),
      child: AppBar(
        backgroundColor: kBgColor.withOpacity(0.1),
        title: Row(
          children: [
            IconButton(
              icon: AnimatedIcon(
                icon: AnimatedIcons.menu_close,
                progress: _animationBtnController,
              ),
              onPressed: () {
                setState(() {
                  isMenu = !isMenu;
                  isMenu
                      ? _animationBtnController.forward()
                      : _animationBtnController.reverse();
                });
              },
            ),
            const SizedBox(width: 10),
            Container(
              padding: const EdgeInsets.only(bottom: 10),
              height: 120,
              child: Image.asset(
                "assets/disney-plus.png",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        actions: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: Image.asset(
              "assets/icons/search.png",
              color: kTextColor,
              width: 35,
            ),
          ),
        ],
      ),
    );
  }
}

// small containers with color..........................................
class DisneyContainers extends StatelessWidget {
  const DisneyContainers({
    Key? key,
    required this.image,
    required this.press,
    this.color = kTextColor,
  }) : super(key: key);

  final String image;
  final VoidCallback press;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: 60,
        width: 60,
        padding: const EdgeInsets.symmetric(horizontal: 3),
        decoration: BoxDecoration(
          color: const Color(0XFF2196f3),
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              const Color(0XFF2196f3),
              const Color(0xFF484848).withOpacity(0.5),
            ],
            stops: const [0.5, 1],
          ),
        ),
        child: Image.asset(
          image,
          height: 50,
          width: 50,
          color: color,
        ),
      ),
    );
  }
}

// small containers without color..........................................
class DisneyContainersWithoutColor extends StatelessWidget {
  const DisneyContainersWithoutColor({
    Key? key,
    required this.image,
    required this.press,
  }) : super(key: key);

  final String image;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: 60,
        width: 60,
        padding: const EdgeInsets.symmetric(horizontal: 3),
        decoration: BoxDecoration(
          color: Colors.amberAccent,
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              const Color(0XFF2196f3),
              const Color(0xFF484848).withOpacity(0.5),
            ],
            stops: const [0.5, 1],
          ),
        ),
        child: Image.asset(
          image,
          height: 50,
          width: 50,
        ),
      ),
    );
  }
}
