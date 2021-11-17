import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home : QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author:'Alan',text :'Its is the end'),
    Quote(text: 'barang padu', author: 'Koco koco tangan di atas'),
  ];



  List<String> authors = [''];

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
          children: quotes.map(( quotes) => QuoteCard(
              quotes :quotes,
              delete:() {
                setState(() {
                  quotes.remove(quotes);
                });
              }

          )).toList(),
    )
    );
  }
}

