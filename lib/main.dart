import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quote = [
    Quote(author: 'Alan', text: 'Its is the end'),
    Quote(text: 'barang padu', author: 'Koco koco tangan di atas'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text('Quote'),
          centerTitle: true,
          backgroundColor: Colors.amberAccent,
        ),
        body: Column(
          children: quote
              .map((quotes) => QuoteCard(
                    quotes: quotes,
                    delete: () {
                      setState(() {
                        if (quote != null) {
                          quote.remove(quotes);
                        }
                      });
                    },
                  ))
              .toList(),
        ));
  }
}
