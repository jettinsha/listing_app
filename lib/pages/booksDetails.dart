import 'package:flutter/material.dart';
import 'package:listing_app/models/books_list.dart';

class BookDetails extends StatelessWidget {
  final Books books;

  BookDetails(this.books);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          books.bookName,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(books.imageUrl),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  books.authorName,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20, decoration: TextDecoration.underline),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  books.desc,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.shopping_cart),
      ),
    );
  }
}
