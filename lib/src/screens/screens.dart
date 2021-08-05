import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'splash_screen.dart';

class Screens {
  // Root
  static const HOME = '/home';
  static const SPLASH = '/';

  static Route? onGenerateRoute(RouteSettings settings) {
    print(
        'Screen Changed : ${settings.name} with arguments (${settings.arguments})');
    final builder = _builders[settings.name];
    if (builder != null)
      return MaterialPageRoute(
        settings: settings,
        fullscreenDialog: _dialogRoutes.contains(settings.name),
        builder: (BuildContext context) => builder(context, settings.arguments),
      );
    return null;
  }

  static const _dialogRoutes = [];

  static Map<String, Widget Function(BuildContext context, Object? data)>
      _builders = {
    // Root
    HOME: (context, data) => HomeScreen(),
    SPLASH: (context, data) => SplashScreen(),
  };
}

extension NavigatorStateExtension on NavigatorState {
  void popTo(String routeName) => popUntil(ModalRoute.withName(routeName));
}
