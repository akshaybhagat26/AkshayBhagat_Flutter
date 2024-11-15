import 'package:akshay_bhagat_flutter/ui/screens/account_settings.dart';
import 'package:akshay_bhagat_flutter/ui/screens/dashboard_screen.dart';
import 'package:akshay_bhagat_flutter/ui/screens/habit_stat_screen.dart';
import 'package:akshay_bhagat_flutter/ui/screens/resources_screen.dart';
import 'package:akshay_bhagat_flutter/utils/route_names.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({super.key});

  @override
  State<BottomNavbarScreen> createState() => _BottomNavbar();
}

class _BottomNavbar extends State<BottomNavbarScreen> {
  final List<BottomNavigationBarItem> items = const [
     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
     BottomNavigationBarItem(icon: Icon(Icons.accessibility_outlined), label: 'Habits'),
     BottomNavigationBarItem(icon: Icon(Icons.lightbulb), label: 'Tips'),
     BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
  ];

  final List<Widget> screens = [
    const DashboardScreen(),
    const HabitStatsScreen(),
    const ResourcesScreen(),
    const Settings()
  ];

  int bottomNavIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: bottomNavIndex,
        children: screens,
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () {
          context.push(RouteNames.addStat.path());
        },
        backgroundColor: Colors.orangeAccent,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        items: items,
        currentIndex: bottomNavIndex,
        selectedItemColor: Colors.orangeAccent,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {});
          bottomNavIndex = index;
        },
        ),
    );
  }
}