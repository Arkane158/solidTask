import 'package:flutter/material.dart';
import 'package:test/colored_screen/colored_screen.dart';

/// The `MyApp` class is a `StatelessWidget`
class MyApp extends StatelessWidget {
  /// An optional `key` parameter
  const MyApp({Key? key}) : super(key: key);

  // Override the build method to describe the UI of the app.
  @override
  Widget build(BuildContext context) {
    // Return a MaterialApp widget,which is the main container for Flutter app
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        ColoredScreen.routeName: (_) => const ColoredScreen(),
      },
      initialRoute: ColoredScreen.routeName,
    );
  }
}
