import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:disney_app/Screens/HomeScreen/home_screen.dart';
import '../componants.dart';
import 'Movies/home_screen.dart';
import 'TV Screen/tv_home_screen.dart';
import 'Disney Screen/disney_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar>
    with SingleTickerProviderStateMixin {
  final GlobalKey<_BottomNavBarState> _bottomnavBarKey = GlobalKey();

  late AnimationController _animationController;

  bool isPlaying = false;

  int _page = 0;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 6000));
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  bodyFunction() {
    switch (_page) {
      case 0:
        return const HomePage();
      case 1:
        return const TvScreen();
      case 2:
        return const DisneyScreen();
      // ignore: no_duplicate_case_values
      case 3:
        return const MoviesScreen();

      default:
        return const DisneyScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      key: _bottomnavBarKey,
      body: bodyFunction(),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: kBgColor,
        color: kMainColor,
        buttonBackgroundColor: kMainColor,
        animationCurve: Curves.easeInBack,
        index: 0,
        items: const <Widget>[
          ImageIcon(
            AssetImage("assets/icons/home.png"),
            semanticLabel: "home",
            color: kTextColor,
          ),
          ImageIcon(
            AssetImage("assets/icons/tv.png"),
            color: kTextColor,
          ),
          ImageIcon(
            AssetImage("assets/icons/disney.png"),
            color: kTextColor,
            size: 60,
          ),
          ImageIcon(
            AssetImage("assets/icons/movies.png"),
            color: kTextColor,
          ),
          ImageIcon(
            AssetImage("assets/icons/sport.png"),
            color: kTextColor,
          ),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
    );
  }
}
