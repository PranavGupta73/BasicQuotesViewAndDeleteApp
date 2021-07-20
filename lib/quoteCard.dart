import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final quotes quote;
  final Function delete;
  QuoteCard({required this.quote, required this.delete});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Card(
        color: Colors.grey[100],
        margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[900],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            FlatButton.icon(
                onPressed: () {
                  delete();
                },
                icon: Icon(Icons.delete),
                label: Text('delete quote'),
            )
          ],
        ),
      ),
    );
  }
}
