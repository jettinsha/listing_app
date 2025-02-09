import 'package:flutter/material.dart';

class Books {
  String bookName;
  String authorName;
  num price;
  String imageUrl;
  String desc;

  Books({
    required this.authorName,
    required this.price,
    required this.imageUrl,
    required this.bookName,
    required this.desc,
  });
}

List<Books> booksList = [
  Books(
    bookName: "The Night Ship",
    authorName: "Jeff Kid",
    desc:
        "First published in 1969, Slaughterhouse-Five is an anti-war novel about Billy Pilgrim, who becomes a chaplain's assistant in the US. Army during World War II. While the story begins with Billy's childhood and continues years after the war, Billy occasionally travels through time to reflect upon his life, humanity, and the devastating effects of war.",
    price: 999,
    imageUrl:
        "https://prodimage.images-bn.com/pimages/9781668015179_p0_v5_s192x300.jpg",
  ),
  Books(
    bookName: "It Start With Us",
    authorName: "Colleen Hoover",
    desc:
        "If you’re pressed for time, devote a few minutes daily to a blog on a niche topic. If you’re looking for an escape, fantasy or historical fiction can transport you out of your own surroundings and into another world altogether.",
    price: 1399,
    imageUrl:
        "https://prodimage.images-bn.com/pimages/9781668001226_p0_v3_s192x300.jpg",
  ),
  Books(
      bookName: "The Silent Woods",
      authorName: "Kimi Grant",
      desc:
          "If you’re pressed for time, devote a few minutes daily to a blog on a niche topic. If you’re looking for an escape, fantasy or historical fiction can transport you out of your own surroundings and into another world altogether.",
      price: 1499,
      imageUrl:
          "https://prodimage.images-bn.com/pimages/9781250793416_p0_v4_s192x300.jpg"),
  Books(
      bookName: "Verity",
      authorName: "Colleen Hoover",
      desc:
          "If you’re pressed for time, devote a few minutes daily to a blog on a niche topic. If you’re looking for an escape, fantasy or historical fiction can transport you out of your own surroundings and into another world altogether.",
      price: 2399,
      imageUrl:
          "https://prodimage.images-bn.com/pimages/9781538739723_p0_v2_s192x300.jpg"),
  Books(
      bookName: "The First to Die at the End ",
      authorName: "Adam Silvera",
      desc:
          "If you’re pressed for time, devote a few minutes daily to a blog on a niche topic. If you’re looking for an escape, fantasy or historical fiction can transport you out of your own surroundings and into another world altogether.",
      price: 1599,
      imageUrl:
          "https://prodimage.images-bn.com/pimages/9780063274105_p0_v3_s192x300.jpg"),
  Books(
      bookName: "The Brothers Hawthorone",
      authorName: "Jenifer Barnes",
      desc:
          "If you’re pressed for time, devote a few minutes daily to a blog on a niche topic. If you’re looking for an escape, fantasy or historical fiction can transport you out of your own surroundings and into another world altogether.",
      price: 1999,
      imageUrl:
          "https://prodimage.images-bn.com/pimages/9780316565233_p0_v1_s192x300.jpg"),
  Books(
      bookName: "Kingdom of the fered",
      authorName: "Kerri Maniscalco",
      desc:
          "If you’re pressed for time, devote a few minutes daily to a blog on a niche topic. If you’re looking for an escape, fantasy or historical fiction can transport you out of your own surroundings and into another world altogether.",
      price: 1599,
      imageUrl:
          "https://prodimage.images-bn.com/pimages/9780316479882_p0_v2_s192x300.jpg"),
  Books(
      bookName: "One Dark Window",
      authorName: "Rachel Gillig",
      desc:
          "If you’re pressed for time, devote a few minutes daily to a blog on a niche topic. If you’re looking for an escape, fantasy or historical fiction can transport you out of your own surroundings and into another world altogether.",
      price: 1499,
      imageUrl:
          "https://prodimage.images-bn.com/pimages/9780316312486_p0_v4_s192x300.jpg"),
  Books(
      bookName: "A Father Story",
      authorName: "Lionel Dahmer",
      desc:
          "If you’re pressed for time, devote a few minutes daily to a blog on a niche topic. If you’re looking for an escape, fantasy or historical fiction can transport you out of your own surroundings and into another world altogether.",
      price: 1799,
      imageUrl:
          "https://prodimage.images-bn.com/pimages/9781635615630_p0_v3_s192x300.jpg"),
  Books(
      bookName: "The First to Die at the End ",
      authorName: "Adam Silvera",
      desc:
          "If you’re pressed for time, devote a few minutes daily to a blog on a niche topic. If you’re looking for an escape, fantasy or historical fiction can transport you out of your own surroundings and into another world altogether.",
      price: 1599,
      imageUrl:
          "https://prodimage.images-bn.com/pimages/9780063274105_p0_v3_s192x300.jpg"),
  // Add other books here...
];

class BooksListScreen extends StatefulWidget {
  @override
  _BooksListScreenState createState() => _BooksListScreenState();
}

class _BooksListScreenState extends State<BooksListScreen> {
  Future<void> _refreshData() async {
    // Simulate a network call or data refresh
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      // Here you can update your booksList with new data
      // For example, you can fetch new data from an API
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Books List'),
      ),
      body: RefreshIndicator(
        onRefresh: _refreshData,
        child: ListView.builder(
          itemCount: booksList.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(booksList[index].bookName),
              subtitle: Text(booksList[index].authorName),
              trailing: Text('\$${booksList[index].price.toString()}'),
              leading: Image.network(
                booksList[index].imageUrl,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            );
          },
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: BooksListScreen(),
  ));
}
