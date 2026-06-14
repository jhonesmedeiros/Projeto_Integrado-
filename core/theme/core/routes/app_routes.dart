import 'package:flutter/material.dart';

import '../../screens/dashboard_screen.dart';
import '../../screens/login_screen.dart';
import '../../screens/splash_screen.dart';

class AppRoutes {
  static const splash = "/";
  static const login = "/login";
  static const dashboard = "/dashboard";

  static Map<String, WidgetBuilder> routes = {
    splash: (_) => const SplashScreen(),
    login: (_) => const LoginScreen(),
    dashboard: (_) => const DashboardScreen(),
  };
}
