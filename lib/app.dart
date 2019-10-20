import 'package:flutter/material.dart';
import './style.dart';
import 'pages/choose_location.dart';
import 'pages/home.dart';
import 'pages/loading.dart';

class App extends StatelessWidget {
  // RouteFactory _routes() {
  //   return (settings) {
  //     final Map<String, dynamic> arguments = settings.arguments;
  //     Widget screen;
  //     switch (settings.name) {
  //       case '/':
  //         screen = Locations();
  //         break;
  //       case '/detail':
  //         screen = LocationDetail(arguments['id']);
  //         break;
  //       default:
  //         return null;
  //     }
  //     return MaterialPageRoute(builder: (BuildContext context) => screen);
  //   };
  // }

  ThemeData _theme() {
    return ThemeData(
      appBarTheme: AppBarTheme(
        textTheme: TextTheme(title: AppBarTextStyle),
      ),
      textTheme: TextTheme(
        title: TitleTextStyle,
        subtitle: SubTitleTextStyle,
        caption: CaptionTextStyle,
        body1: Body1TextStyle,
      ),
      primarySwatch: Colors.blue,
      fontFamily: 'Kanit',
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QuoteList',
      // onGenerateRoute: _routes(),
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (context) => ChooseLocation(),
      },
      theme: _theme(),
      initialRoute: '/',
    );
  }
}
