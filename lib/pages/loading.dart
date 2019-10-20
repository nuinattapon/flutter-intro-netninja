import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import '../style.dart';
import '../models/quote.dart';
import '../pages/loading.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getTime() async {
    Response response =
        await get('http://worldtimeapi.org/api/timezone/Asia/Bangkok');
    Map data = jsonDecode(response.body);

    // print(data);
    // Get properties from data
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1, 3);
    print('$datetime - $offset');
    // Create datetime object
    DateTime now = DateTime.parse(datetime);
    // now = now.add(Duration(hours: int.parse(offset)));
    print(now.hour);
  }

  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('Awesome Quotes'),
        //   centerTitle: true,
        // backgroundColor: Colors.red[800],
        // ),
        body: SafeArea(
      child: Text('Loading Page'),
    ));
  }
}
