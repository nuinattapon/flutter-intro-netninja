import 'package:flutter/material.dart';
import '../style.dart';
import '../models/quote.dart';
import '../pages/loading.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
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
