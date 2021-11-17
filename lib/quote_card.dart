import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quotes;
  final VoidCallback delete;

  QuoteCard({Key? key, required this.quotes, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(15, 16, 16, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: Text(
                quotes.text,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.grey[600],
                ),
              ),
            ),
            SizedBox(height: 6.0),
            Center(
              child: Text(
                quotes.author,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.amberAccent[600],
                ),
              ),
            ),
            SizedBox(height: 8),
            FlatButton.icon(
                onPressed: delete,
                icon: Icon(Icons.delete),
                label: Text('delete quote')),
          ],
        ),
      ),
    );
  }
}
