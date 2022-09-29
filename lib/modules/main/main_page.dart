import 'package:bank_sha_main/modules/main/history/history_page.dart';
import 'package:bank_sha_main/modules/main/home/home_page.dart';
import 'package:bank_sha_main/modules/main/reward/reward_page.dart';
import 'package:bank_sha_main/modules/main/statistic/statistic_page.dart';
import 'package:bank_sha_main/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: const [
          HomePage(),
          HistoryPage(),
          StatisticPage(),
          RewardPage()
        ],
        items: _navBarsItems(),
        navBarStyle: NavBarStyle.style6,
      ),
    );
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Image.asset(
          'assets/ic_overview.png',
          width: 20,
          color: blueColor,
        ),
        title: ("Overview"),
        activeColorPrimary: blueColor,
        inactiveColorPrimary: blackColor,
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          'assets/ic_history.png',
          width: 20,
          color: blueColor,
        ),
        title: ("History"),
        activeColorPrimary: blueColor,
        inactiveColorPrimary: blackColor,
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          'assets/ic_statistic.png',
          width: 20,
          color: blueColor,
        ),
        title: ("Statistic"),
        activeColorPrimary: blueColor,
        inactiveColorPrimary: blackColor,
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          'assets/ic_reward.png',
          width: 20,
          color: blueColor,
        ),
        title: ("Reward"),
        activeColorPrimary: blueColor,
        inactiveColorPrimary: blackColor,
      ),
    ];
  }
}
