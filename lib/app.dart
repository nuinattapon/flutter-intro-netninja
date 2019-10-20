import 'package:flutter/material.dart';
import './style.dart';
import './models/quote.dart';
import './quote_card.dart';

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
      primarySwatch: Colors.amber,
      fontFamily: 'Kanit',
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QuoteList',
      // onGenerateRoute: _routes(),
      theme: _theme(),
      home: QuoteList(),
    );
  }
}

class QuoteList extends StatefulWidget {
  QuoteList({Key key}) : super(key: key);

  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        author: 'Oscar Wilde',
        text: 'Be yourself; everyone else is already taken'),
    Quote(
        author: 'Oscar Wilde',
        text: 'I have nothing to declare except my genius'),
    Quote(
        author: 'Oscar Wilde',
        text: 'The truth is rarely pure and never simple'),
    Quote(
        author: 'Oscar Wilde',
        text: 'Be yourself; everyone else is already taken'),
    Quote(
        author: 'Oscar Wilde',
        text: 'I have nothing to declare except my genius'),
    Quote(
        author: 'Oscar Wilde',
        text: 'The truth is rarely pure and never simple'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Awesome Quotes'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ...quotes
                  .map(
                    (quote) => QuoteCard(
                      quote: quote,
                      delete: () {
                        setState(() {
                          quotes.remove(quote);
                        });
                      },
                    ),
                  )
                  .toList(),
            ],
          ),
        ),
      ),
    );
  }
}
