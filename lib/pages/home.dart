import 'package:flutter/material.dart';
import '../style.dart';
import '../models/quote.dart';
import '../pages/loading.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('Awesome Quotes'),
        //   centerTitle: true,
        // backgroundColor: Colors.red[800],
        // ),
        body: SafeArea(
      child: Text('Home'),
    ));
  }
}
