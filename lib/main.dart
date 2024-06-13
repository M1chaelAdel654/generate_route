import 'package:flutter/material.dart';
import 'package:generated_routes/routes.dart';
import 'package:generated_routes/routes_generator.dart';

import 'first_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesName.firstScreen,
      onGenerateRoute: Routes.generateRoute,
      home: FirstScreen(),
    );
  }
}
