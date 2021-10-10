import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class BookDetailsPage extends StatefulWidget {
  final int id;

  const BookDetailsPage({
    @PathParam('book') this.id = -1,
    Key? key,
  }) : super(key: key);

  @override
  _BookDetailsPageState createState() => _BookDetailsPageState();
}

class _BookDetailsPageState extends State<BookDetailsPage> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Hero(
          tag: 'Hero${widget.id}',
          child: Card(
            margin: const EdgeInsets.all(48),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Book Details/${widget.id}'),
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Text(
                    'Reads  $counter',
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
                const SizedBox(height: 32),
                FloatingActionButton(
                  heroTag: null,
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                  },
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
