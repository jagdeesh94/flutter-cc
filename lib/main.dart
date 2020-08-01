import 'package:flutter/material.dart';
import 'package:flutter_cc/screens/location_detail/location_detail.dart';
import 'package:flutter_cc/style.dart';
import 'screens/locations/locations.dart';

void main() {
  runApp(MyApp());
}

const LocationsRoute = "/";
const LocationDetailRoute = "/location_detail";

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter CC',
      onGenerateRoute: _routes(),
      theme: _theme(),
    );
  }

  RouteFactory _routes() {
    return (settings){
      final Map<String,dynamic> arguments = settings.arguments;
      Widget screen;
      switch(settings.name){
        case LocationsRoute:
          screen = Locations();
          break;
        case LocationDetailRoute:
          screen = LocationDetail(arguments['id']);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }

  ThemeData _theme() {
    return ThemeData(
      appBarTheme: AppBarTheme(
          textTheme: TextTheme(title: AppBarTextStyle)
      ),
      textTheme: TextTheme(
          title: TitleTextStyle,
          body1: Body1TextStyle
      ),
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }
}

