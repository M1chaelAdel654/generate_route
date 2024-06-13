import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:generated_routes/first_screen.dart';
import 'package:generated_routes/routes.dart';
import 'package:generated_routes/second_screen.dart';
import 'package:generated_routes/third_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.firstScreen:
        return MaterialPageRoute(builder: (_) => FirstScreen());
      case RoutesName.secondScreen:
        var data = settings.arguments as String;
        return MaterialPageRoute(builder: (_) => SecondScreen(data: data,));
      case RoutesName.thirdScreen:
        var data = settings.arguments as String;
        return MaterialPageRoute(builder: (_) => ThirdScreen(data: data,));

      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(
              child: Text("No Route defined for ${settings.name}"),
            ),
          );
        });
    }
  }
}
