import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Modular.navigatorKey,
      title: 'Flutter Slidy',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Color(0xFF202426),
          textTheme: TextTheme(
              title: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.w900,
            fontStyle: FontStyle.normal,
            letterSpacing: -0.02,
            color: Colors.grey[50],
          ))),
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
