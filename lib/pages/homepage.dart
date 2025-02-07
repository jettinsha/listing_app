import 'package:flutter/material.dart';

import 'package:listing_app/models/books_list.dart';
import 'package:listing_app/pages/booksDetails.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Books",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView.builder(
            itemCount: booksList.length,
            itemBuilder: (context, index) {
              Books books = booksList[index];
              return Card(
                child: ListTile(
                  title: Text(books.bookName),
                  subtitle: Text(books.authorName),
                  leading: books.imageUrl != null
                      ? Image.network(books.imageUrl)
                      : Image.network(
                          "https://docs.google.com/uc?export=view&id="),
                  trailing: Text(
                    "\$${books.price}",
                    style: TextStyle(color: Colors.orange),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BookDetails(books)));
                  },
                ),
              );
            }));
  }
}
