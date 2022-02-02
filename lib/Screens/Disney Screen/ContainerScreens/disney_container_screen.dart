import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:disney_app/Screens/HomeScreen/Action%20Movies/action_movies_slid.dart';
import 'package:disney_app/Screens/HomeScreen/Latest%20&%20Trending/latest_trending_slid.dart';
import 'package:disney_app/Screens/HomeScreen/headers_with_title.dart';
import 'package:disney_app/Screens/TV%20Screen/Items/best_of_kids.dart';
import 'package:disney_app/Screens/TV%20Screen/Items/disney+_hoststar.dart';
import 'package:disney_app/Screens/TV%20Screen/Items/popular_in_drama.dart';
import 'package:disney_app/Screens/TV%20Screen/Items/popular_in_riality.dart';
import '../../../componants.dart';

class DisneyContainerScreen extends StatefulWidget {
  const DisneyContainerScreen({Key? key}) : super(key: key);

  @override
  State<DisneyContainerScreen> createState() => _DisneyContainerScreenState();
}

class _DisneyContainerScreenState extends State<DisneyContainerScreen> {
  late ScrollController _opacityController;

  bool _isOpacity = false;

  bool _scrollUp = false;

  bool _appbarOpacity = false;

  @override
  void initState() {
    super.initState();
    _opacityController = ScrollController();
    _opacityController.addListener(() {
      if (_opacityController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (!_scrollUp) {
          _isOpacity = false;
          _scrollUp = true;
          _appbarOpacity = false;
          setState(() {});
        }
      }

      if (_opacityController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (_scrollUp) {
          _isOpacity = true;
          _scrollUp = false;
          _appbarOpacity = true;
          setState(() {});
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBgColor,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: animationAppBar(),
        ),
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            CustomScrollView(
              physics: const BouncingScrollPhysics(),
              controller: _opacityController,
              slivers: [
                SliverAppBar(
                  backgroundColor: kBgColor,
                  automaticallyImplyLeading: false,
                  expandedHeight: 230,
                  stretch: true,
                  flexibleSpace: FlexibleSpaceBar(
                    stretchModes: const [
                      StretchMode.zoomBackground,
                      StretchMode.blurBackground,
                    ],
                    background: Stack(
                      children: [
                        Positioned(
                          bottom: -15,
                          top: 0,
                          left: 0,
                          right: 0,
                          child: Image.asset(
                            "assets/disney_land.jpg",
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        const Positioned(
                          top: 30,
                          left: 20,
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: kTextColor,
                          ),
                        ),
                        Positioned(
                          top: 30,
                          right: 20,
                          child: Image.asset(
                            "assets/icons/search.png",
                            height: 30,
                            color: kTextColor,
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Colors.transparent,
                                  kBgColor,
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                stops: [0.5, 1]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return Column(
                        children: [
                          //Originals................................................
                          const HeaderWithTitle(text: "Originals"),
                          SizedBox(height: kDefaultPadding / 2),
                          const DisneyPlusHostStar(),

                          //Live action movies................................................
                          SizedBox(height: kDefaultPadding),
                          const HeaderWithTitle(text: "Live Action Movies"),
                          SizedBox(height: kDefaultPadding / 2),
                          const ActionMovies(),

                          //Walt Disney Animation Studios................................................
                          SizedBox(height: kDefaultPadding),
                          const HeaderWithTitle(
                              text: "Walt Disney Animation Studios"),
                          SizedBox(height: kDefaultPadding / 2),
                          const BestOfKids(),

                          //Additional Animation Studios................................................
                          SizedBox(height: kDefaultPadding),
                          const HeaderWithTitle(
                              text: "Additional Animation Studios"),
                          SizedBox(height: kDefaultPadding / 2),
                          const PopularInRiality(),

                          //Disney Channel Series................................................
                          SizedBox(height: kDefaultPadding),
                          const HeaderWithTitle(text: "Disney Channel Series"),
                          SizedBox(height: kDefaultPadding / 2),
                          const LatestAndTrending(),

                          //Disney Junior Series................................................
                          SizedBox(height: kDefaultPadding),
                          const HeaderWithTitle(text: "Disney Junior Series"),
                          SizedBox(height: kDefaultPadding / 2),
                          const PopularInDrama(),
                        ],
                      );
                    },
                    // semanticIndexOffset: 0,
                    childCount: 2,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

//for app bar.......................................................
  AnimatedOpacity animationAppBar() {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 700),
      opacity: _appbarOpacity ? 1 : 0,
      child: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        // toolbarHeight: 70,
        backgroundColor: _appbarOpacity ? kBgColor : Colors.transparent,
        excludeHeaderSemantics: true,
        title: AnimatedOpacity(
          duration: const Duration(milliseconds: 600),
          opacity: _isOpacity ? 1 : 0,
          child: Image.asset(
            "assets/disney-plus.png",
            width: 230,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
