import 'package:flutter/material.dart';
import './quote.dart';
import 'quoteCard.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  final List<quotes> quoteList = [
    quotes(
        text:
            "Start writing, no matter what. The water does not flow until the faucet is turned on.",
        author: 'Louis L’Amour'),
    quotes(
        text:
            "Get it down. Take chances. It may be bad, but it's the only way you can do anything really good.",
        author: 'William Faulkner'),
    quotes(
      text: "The first draft is just you telling yourself the story.",
      author: 'Terry Pratchett',
    ),
    quotes(
        text: "You can always edit a bad page. You can’t edit a blank page",
        author: 'Jodi Picoult'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        title: Text('Awesome Quotes'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: quoteList.map((quote) {
          return QuoteCard(
              quote: quote,
              delete: () {
                setState(() {
                  quoteList.remove(quote);
                });
              });
        }).toList(),
      ),
    );
  }
}
