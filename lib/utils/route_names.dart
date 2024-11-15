class RouteNames {
  static const String dashboard = 'dashboard';
  static const String bottomNav = 'bottomNav';
  static const String habitStats = 'habitStats';
  static const String resource = 'resource';
  static const String settings = 'settings';
  static const String addStat = 'addStat';
  static const String categoryDetails = 'categoryDetails';
}

extension GoRouterPath on String {
  String path()=> '/$this';
}
