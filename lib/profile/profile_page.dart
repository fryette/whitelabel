import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:whitelabel/model.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  User userData = User(
    books: [
      const Book(id: 1, name: 'Name', genre: 'Genre'),
    ],
    name: 'Name',
    email: 'email@email.com',
    id: 123,
    favoriteBook: const Book(id: 1, name: 'Name', genre: 'Genre'),
  );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Profile page',
            style: Theme.of(context).textTheme.headline5,
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: () {
              context.router.push(MyBooksRoute());
            },
            child: const Text('My Books'),
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: () {
              context.router.replaceAll([const LoginRoute()]);
            },
            child: const Text('Logout'),
          ),
          const SizedBox(height: 32),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Your Data is complete'),
              const SizedBox(height: 24),
              Text('Name: ${userData.name}'),
              const SizedBox(height: 24),
              Text('Favorite book: ${userData.favoriteBook}'),
            ],
          )
        ],
      ),
    );
  }
}
