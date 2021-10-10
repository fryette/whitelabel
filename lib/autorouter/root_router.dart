import 'package:auto_route/auto_route.dart';
import 'package:whitelabel/book_details/book_details_page.dart';
import 'package:whitelabel/book_list/book_list_page.dart';
import 'package:whitelabel/home/home_page.dart';
import 'package:whitelabel/profile/routes.dart';
import 'package:whitelabel/settings/settings_page.dart';

import '../login_page.dart';

export 'root_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page|Dialog,Route',
  routes: <AutoRoute>[
    AutoRoute<String>(
      path: '/',
      page: HomePage,
      children: [
        AutoRoute(
          path: 'books',
          page: EmptyRouterPage,
          name: 'BooksTab',
          children: [
            AutoRoute(path: '', page: BookListPage),
            AutoRoute(path: ':id', page: BookDetailsPage),
          ],
        ),
        profileTab,
        AutoRoute(
          path: 'settings/:tab',
          page: SettingsPage,
          name: 'SettingsTab',
        ),
      ],
    ),
    AutoRoute(page: LoginPage, path: '/login'),
  ],
)
class $RootRouter {}
