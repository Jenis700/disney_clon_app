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
import 'package:disney_app/Screens/TV%20Screen/Items/top_piks_for_you.dart';

import '../../componants.dart';
import 'Items/shows_you_watch.dart';

class TvScreen extends StatefulWidget {
  const TvScreen({Key? key}) : super(key: key);

  @override
  State<TvScreen> createState() => _TvScreenState();
}

class _TvScreenState extends State<TvScreen> {
  late ScrollController _scrollViewController;

  bool _showAppbar = true;

  bool isScrollingUp = false;

  @override
  void initState() {
    super.initState();
    _scrollViewController = ScrollController();
    _scrollViewController.addListener(() {
      if (_scrollViewController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (!isScrollingUp) {
          isScrollingUp = true;
          _showAppbar = false;
          setState(() {});
        }
      }

      if (_scrollViewController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (isScrollingUp) {
          isScrollingUp = false;
          _showAppbar = true;
          setState(() {});
        }
      }
    });
  }

  @override
  void dispose() {
    _scrollViewController.dispose();
    _scrollViewController.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBgColor,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            animationAppBar(),
            Expanded(
              child: SingleChildScrollView(
                controller: _scrollViewController,
                child: Column(
                  children: [
                    SizedBox(height: kDefaultPadding / 2),

                    //main gif slider
                    MainSlider(size: size),
                    SizedBox(height: kDefaultPadding * 2),

                    //shows you watch
                    const HeaderWithTitle(text: "Shows You Watch"),
                    SizedBox(height: kDefaultPadding / 2),
                    const ShowsYouWatch(),
                    SizedBox(height: kDefaultPadding),

                    //top picks
                    const HeaderWithTitle(text: "Top Picks For You"),
                    SizedBox(height: kDefaultPadding / 2),
                    const TopPicks(),
                    SizedBox(height: kDefaultPadding),

                    //popular shows
                    const HeaderWithTitle(text: "Popular Shows"),
                    SizedBox(height: kDefaultPadding / 2),
                    const PopularShow(),
                    SizedBox(height: kDefaultPadding),

                    //popular channels
                    const HeaderWithTitle(text: "Popular Channels"),
                    SizedBox(height: kDefaultPadding / 2),
                    const PopularChannel(),
                    SizedBox(height: kDefaultPadding),

                    //disney+ hoststar
                    const HeaderWithTitle(text: "New On Disney+ Hotstar"),
                    SizedBox(height: kDefaultPadding / 2),
                    const DisneyPlusHostStar(),
                    SizedBox(height: kDefaultPadding),

                    //best of kids
                    const HeaderWithTitle(text: "Best Of Kids"),
                    SizedBox(height: kDefaultPadding / 2),
                    const BestOfKids(),
                    SizedBox(height: kDefaultPadding),
                    //popular in riality
                    const HeaderWithTitle(text: "Popular in Reality"),
                    SizedBox(height: kDefaultPadding / 2),
                    const PopularInRiality(),
                    SizedBox(height: kDefaultPadding),

                    //popular in drama
                    const HeaderWithTitle(text: "Popular in Drama"),
                    SizedBox(height: kDefaultPadding / 2),
                    const PopularInDrama(),
                    SizedBox(height: kDefaultPadding),

                    //popular in crime
                    const HeaderWithTitle(text: "Latest & Trending"),
                    SizedBox(height: kDefaultPadding / 2),
                    const ShowsYouWatch(),
                    SizedBox(height: kDefaultPadding),

                    //popular in crime
                    const HeaderWithTitle(text: "Popular in Crime"),
                    SizedBox(height: kDefaultPadding / 2),
                    const PopularInCrime(),
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

// for app bar..................................................
  AnimatedContainer animationAppBar() {
    return AnimatedContainer(
      height: _showAppbar ? 68.0 : 0.0,
      duration: const Duration(milliseconds: 200),
      child: AppBar(
        backgroundColor: kBgColor.withOpacity(0.1),
        title: Row(
          children: [
            const Icon(Icons.menu),
            const SizedBox(width: 33),
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
