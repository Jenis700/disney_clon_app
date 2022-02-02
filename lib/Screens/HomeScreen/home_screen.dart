import 'package:flutter/material.dart';
import 'package:disney_app/componants.dart';
import 'headers_with_title.dart';
import 'Action Movies/action_movies_slid.dart';
import 'Downloads/download_list.dart';
import 'Latest & Trending/latest_trending_slid.dart';
import 'WatchList/watch_list.dart';
import 'continue/continue_watching.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,

      //appbar......................................
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(380),
        child: CustomScrollView(
          slivers: [
            pinnedAppBar(),
            waltdisney(),
            disneyWorld(),
            princessSlivers(),
            disneyWorld2(),
          ],
        ),
      ),

      //body........................................................
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: kDefaultPadding),
            const HeaderWithTitle(text: "Continue Watching"),
            SizedBox(height: kDefaultPadding / 2),
            const ContinueWatching(),
            SizedBox(height: kDefaultPadding),
            const HeaderWithTitle(text: "Watchlist"),
            SizedBox(height: kDefaultPadding / 2),
            const WatchList(),
            SizedBox(height: kDefaultPadding),
            const HeaderWithTitle(text: "Downloads"),
            SizedBox(height: kDefaultPadding / 2),
            const Downloads(),
            SizedBox(height: kDefaultPadding),
            const HeaderWithTitle(text: "Latest & Trending"),
            SizedBox(height: kDefaultPadding / 2),
            const LatestAndTrending(),
            SizedBox(height: kDefaultPadding),
            const HeaderWithTitle(text: "Action Movies"),
            SizedBox(height: kDefaultPadding / 2),
            const ActionMovies(),
            SizedBox(height: kDefaultPadding),
          ],
        ),
      ),
    );
  }

// pinned app bar...........................................................
  SliverAppBar pinnedAppBar() {
    return SliverAppBar(
      expandedHeight: 60,
      backgroundColor: Colors.transparent,
      snap: true,
      floating: true,
      // pinned: true,
      leading: IconButton(
        onPressed: () {
          setState(() {
            isPlaying = !isPlaying;
            isPlaying
                ? _animationController.forward()
                : _animationController.reverse();
          });
        },
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_close,
          progress: _animationController,
        ),
      ),
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 10),
          child: Image.asset(
            "assets/icons/search.png",
            color: kTextColor,
            width: 35,
          ),
        ),
      ],
      centerTitle: true,
      title: Padding(
        padding: const EdgeInsets.only(right: 30, bottom: 10),
        child: Image.asset("assets/disney-plus.png"),
      ),
    );
  }
}

//memory of and walt disney..........................................
SliverAppBar waltdisney() {
  return SliverAppBar(
    backgroundColor: Colors.transparent,
    expandedHeight: 410,
    flexibleSpace: FlexibleSpaceBar(
      background: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 90,
                child: Image.asset(
                  "assets/image/Loving-memory.png",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 80,
                child: Image.asset(
                  "assets/image/Disney_Princess_logo.png",
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset("assets/image/walt-mikey.jpg"),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            height: 45,
            width: 45,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kMainColor.withOpacity(0.6),
                border: Border.all(
                  color: kMainColor,
                  width: 2,
                  style: BorderStyle.solid,
                )),
            child: Image.asset(
              "assets/icons/down-arrow.crdownload",
              color: kTextColor,
            ),
          ),
        ],
      ),
    ),
  );
}

// disney World Photo.................................................
SliverAppBar disneyWorld() {
  return SliverAppBar(
    pinned: true,
    floating: true,
    snap: true,
    backgroundColor: kBgColor,
    expandedHeight: 200,
    flexibleSpace: FlexibleSpaceBar(
      title: Image.asset("assets/image/disneyland-paris-logo.png"),
      centerTitle: true,
      titlePadding: const EdgeInsets.only(top: 20),
      background: Image.asset(
        "assets/disney_world.webp",
        fit: BoxFit.cover,
      ),
    ),
  );
}

// princessess photos.........................................
SliverAppBar princessSlivers() {
  return SliverAppBar(
    backgroundColor: kBgColor,
    expandedHeight: 200,
    flexibleSpace: FlexibleSpaceBar(
      background: Image.asset(
        "assets/Disney-Princesses.png",
      ),
    ),
  );
}

//disney world photo........................................
SliverAppBar disneyWorld2() {
  return SliverAppBar(
    backgroundColor: kBgColor,
    expandedHeight: 170,
    flexibleSpace: FlexibleSpaceBar(
      background: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Image.asset(
          "assets/disney_world2.jpeg",
          fit: BoxFit.fitWidth,
        ),
      ),
    ),
  );
}
