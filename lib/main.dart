import 'package:esm/resources/utils/routs.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:flutter/material.dart';

void main() {
  tz.initializeTimeZones();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appGenerateRoute = AppRoute();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'esm App',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: _appGenerateRoute.onGenerateRoute,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: false,
        cardColor: Colors.white,
      ),
    );
  }
}
