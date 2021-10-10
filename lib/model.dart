class Book {
  final int id;
  final String name;
  final String genre;

  const Book({
    required this.id,
    required this.name,
    required this.genre,
  });
}

class User {
  final int id;
  final String name;
  final String email;
  final List<Book> books;
  final Book favoriteBook;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.books,
    required this.favoriteBook,
  });
}
