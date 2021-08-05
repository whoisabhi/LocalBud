import 'package:flutter/material.dart';

import 'screens/screens.dart';
import 'styles/styles.dart';

class LocalBudApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SchemeProvider(
      scheme: Schemes.radiantLight,
      builder: (context, scheme) {
        return MaterialApp(
          title: 'LocalBud',
          theme: scheme.theme,
          initialRoute: Screens.SPLASH,
          onGenerateRoute: Screens.onGenerateRoute,
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
