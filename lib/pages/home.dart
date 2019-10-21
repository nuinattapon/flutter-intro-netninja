import 'package:flutter/material.dart';
import '../style.dart';
import '../models/quote.dart';
import '../pages/loading.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty ? data : ModalRoute.of(context).settings.arguments;
    print(data);

    // set background image
    String bgImage = data['isDaytime'] ? 'day.jpg' : 'night.jpg';
    Color bgColor = data['isDaytime'] ? Colors.blue[400] : Colors.indigo[700];
    Color textColor = data['isDaytime'] ? Colors.grey[900] : Colors.grey[50];
    print(bgImage);
    return Scaffold(
      backgroundColor: bgColor,
      // appBar: AppBar(
      //   title: Text('Awesome Quotes'),
      //   centerTitle: true,
      //   backgroundColor: Colors.red[800],
      // ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            // color: Colors.grey[200],
            image: DecorationImage(
              image: AssetImage('assets/images/${bgImage}'),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                    // color: Colors.grey,
                    ),
              ),
              Expanded(
                flex: 10,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      FlatButton.icon(
                        onPressed: () async {
                          dynamic result =
                              await Navigator.pushNamed(context, '/location');
                          if (result != null) {
                            setState(() {
                              data = {
                                'time': result['time'],
                                'location': result['location'],
                                'isDaytime': result['isDaytime'],
                                'flag': result['flag']
                              };
                            });
                          }
                        },
                        icon: Icon(
                          Icons.edit_location,
                          color: textColor,
                        ),
                        label: Text(
                          'Click เพื่อเลือกตำแหน่ง',
                          style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            data['location'],
                            style: TitleTextStyle.copyWith(
                              color: textColor,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        data['time'],
                        style: TitleTextStyle.copyWith(
                            color: textColor,
                            fontWeight: FontWeight.w200,
                            fontSize: 50),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                    // color: Colors.grey,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
