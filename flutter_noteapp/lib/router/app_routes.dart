import 'package:flutter/material.dart';
import 'package:flutter_noteapp/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> routes = {
        'home'     : (BuildContext context) => const HomeScreen(),
        'login'    : (BuildContext context) => const LoginScreen(),
        'dashboard': (BuildContext context) => const DashboardScreen(),
      }; 

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const HomeScreen(), );
  }
}