import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

class MyBooksPage extends StatelessWidget {
  final String? filter;

  const MyBooksPage({Key? key, @queryParam this.filter = 'none'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'My Books -> filter: $filter',
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 16),
            Text(
              'Fragment Support? ${context.routeData.fragment}',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                context.navigateTo(
                  SettingsTab(tab: 'newSegment'),
                );
              },
              child: const Text('navigate to /settings/newSegment'),
            )
          ],
        ),
      ),
    );
  }
}
