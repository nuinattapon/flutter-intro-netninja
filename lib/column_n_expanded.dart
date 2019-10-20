import 'package:flutter/material.dart';
import './style.dart';

const LocationsRoute = '/';
const LocationDetailRoute = '/location_detail';

class ColumnNExpanded extends StatelessWidget {
  // This widget is the root of your application.

  // RouteFactory _routes() {
  //   return (settings) {
  //     final Map<String, dynamic> arguments = settings.arguments;
  //     Widget screen;
  //     switch (settings.name) {
  //       case LocationsRoute:
  //         screen = Locations();
  //         break;
  //       case LocationDetailRoute:
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
      title: 'บทเรียนฟลัตเตอร์',
      // onGenerateRoute: _routes(),
      theme: _theme(),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textColor = TextColorDark;
    final hPad = 8.0;
    final vPad = 8.0;
    // final assetPath = 'assets/images/arashiyama.jpg';
    // final imageHeight = 200.0;
    return Scaffold(
      appBar: AppBar(
        title: Text('Home - หน้าจอหลัก'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: hPad, vertical: vPad),
              color: Colors.cyan,
              child: Text(
                '1 - One - หนึ่ง',
                style: Theme.of(context).textTheme.body1.copyWith(
                    fontSize: LargeTextSize, fontWeight: FontWeight.w200),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: hPad, vertical: vPad),
              color: Colors.pinkAccent,
              child: Text(
                '2 - Two - สอง',
                style: Theme.of(context)
                    .textTheme
                    .body1
                    .copyWith(color: textColor),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: hPad, vertical: vPad),
              color: Colors.amber,
              child: Text(
                '3 - Three - สาม',
                style: Theme.of(context)
                    .textTheme
                    .body1
                    .copyWith(color: textColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
