import 'package:flutter/material.dart';

import 'main.dart';

class RouteGenerater {
  static const ROUTE_HOME = "/";
  static const ROUTE_DUMMY = "/intermediate";
  static const ROUTE_NESTED = "/intermediate/nested_state";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case ROUTE_HOME:
        final page = HomePage();
        return MaterialPageRoute(builder: (context) => page);
      case ROUTE_DUMMY:
        final page = DummyPage();
        return MaterialPageRoute(builder: (context) => page);
      case ROUTE_NESTED:
        final page = NestedState();
        return MaterialPageRoute(builder: (context) => page);

      default:
        return MaterialPageRoute(builder: (context) => HomePage());
    }
  }
}
