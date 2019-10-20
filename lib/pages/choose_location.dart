import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  void getData() async {
    // Simuulate network request for a username
    String username = await Future.delayed(
      Duration(seconds: 3),
      () {
        return 'yoshi';
      },
    );
    // Simuulate network request for a bio
    String bio = await Future.delayed(
      Duration(seconds: 2),
      () {
        return 'vegan, musician && egg collector';
      },
    );
    print('getData function ran: $username - $bio');
  }

  @override
  void initState() {
    super.initState();
    print('initState function ran');
    getData();
    print('initState function finished');
  }

  @override
  Widget build(BuildContext context) {
    print('build function ran');

    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Awesome Quotes'),
          centerTitle: true,
          backgroundColor: Colors.blue[900],
          elevation: 0.0,
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Counter is $counter'),
                ),
              ),
              Center(
                child: RaisedButton(
                  child: Text(
                    'Counter is $counter',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    setState(() {
                      counter += 1;
                    });
                  },
                  color: Colors.blue[900],
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    // side: BorderSide(
                    //   color: Colors.blue[900],
                    //   width: 1,
                    // ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
