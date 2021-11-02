import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:whitelabel/model.dart';

class BookListPage extends StatefulWidget {
  const BookListPage({Key? key}) : super(key: key);

  @override
  _BookListPageState createState() => _BookListPageState();
}

class _BookListPageState extends State<BookListPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Book(id: 1, name: 'book1', genre: 'genre1'),
        const Book(id: 2, name: 'book2', genre: 'genre2'),
        const Book(id: 3, name: 'book3', genre: 'genre3'),
        const Book(id: 4, name: 'book4', genre: 'genre4'),
      ]
          .map((book) => Column(
                children: [
                  Hero(
                    tag: 'Hero${book.id}',
                    child: Card(
                      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: ListTile(
                        title: Text(book.name),
                        subtitle: Text(book.genre),
                        onTap: () {
                          BookDetailsRoute(id: book.id).show(context);
                        },
                      ),
                    ),
                  ),
                ],
              ))
          .toList(),
    );
  }
}
