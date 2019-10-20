import 'package:flutter/material.dart';
import 'package:test_widget/style.dart';
import './models/quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  QuoteCard({this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(height: 2.0),
            FlatButton.icon(
              icon: Icon(Icons.delete, size: 16.0, color: Colors.grey[600]),
              label: Text('delete',
                  style: CaptionTextStyle.copyWith(color: Colors.grey[800])),
              onPressed: delete,
            )
          ],
        ),
      ),
    );
  }
}
