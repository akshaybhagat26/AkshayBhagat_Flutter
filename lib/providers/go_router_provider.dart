import 'package:akshay_bhagat_flutter/ui/screens/account_settings.dart';
import 'package:akshay_bhagat_flutter/ui/screens/add_habit_stat_screen.dart';
import 'package:akshay_bhagat_flutter/ui/screens/bottom_navbar.dart';
import 'package:akshay_bhagat_flutter/ui/screens/category_details_screen.dart';
import 'package:akshay_bhagat_flutter/ui/screens/error_screen.dart';
import 'package:akshay_bhagat_flutter/ui/screens/dashboard_screen.dart';
import 'package:akshay_bhagat_flutter/ui/screens/habit_stat_screen.dart';
import 'package:akshay_bhagat_flutter/ui/screens/resources_screen.dart';
import 'package:akshay_bhagat_flutter/utils/route_names.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    debugLogDiagnostics: true,
    initialLocation: RouteNames.bottomNav.path(),
    routes: [
      GoRoute(
          path: RouteNames.bottomNav.path(),
          name: RouteNames.bottomNav,
          builder: (context, state) {
            return const BottomNavbarScreen();
          }),
      GoRoute(
          path: RouteNames.dashboard.path(),
          name: RouteNames.dashboard,
          builder: (context, state) {
            return const DashboardScreen();
          }),
      GoRoute(
          path: RouteNames.habitStats.path(),
          name: RouteNames.habitStats,
          builder: (context, state) {
            return const HabitStatsScreen();
          }),
      GoRoute(
          path: RouteNames.settings.path(),
          name: RouteNames.settings,
          builder: (context, state) {
            return const Settings();
          }),
      GoRoute(
          path: RouteNames.resource.path(),
          name: RouteNames.resource,
          builder: (context, state) {
            return const ResourcesScreen();
          }),
      GoRoute(
          path: RouteNames.addStat.path(),
          name: RouteNames.addStat,
          builder: (context, state) {
            return const AddHabitStatScreen();
          }),
           GoRoute(
          path: RouteNames.categoryDetails.path(),
          name: RouteNames.categoryDetails,
          builder: (context, state) {
            return const CategoryDetailsScreen(categoryName: '',);
          }),
    ],
    errorBuilder: (context, state) {
      return ErrorScreen(error: state.error.toString());
    },
  );
});
