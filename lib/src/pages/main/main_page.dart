part of '../pages.dart';

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
          color: blackColor,
        ),
        title: ("Overview"),
        activeColorPrimary: blueColor,
        inactiveColorPrimary: blackColor,
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          'assets/ic_history.png',
          width: 20,
          color: blackColor,
        ),
        title: ("History"),
        activeColorPrimary: blueColor,
        inactiveColorPrimary: blackColor,
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          'assets/ic_statistic.png',
          width: 20,
          color: blackColor,
        ),
        title: ("Statistic"),
        activeColorPrimary: blueColor,
        inactiveColorPrimary: blackColor,
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          'assets/ic_reward.png',
          width: 20,
          color: blackColor,
        ),
        title: ("Reward"),
        activeColorPrimary: blueColor,
        inactiveColorPrimary: blackColor,
      ),
    ];
  }
}
