// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i9;
import 'package:whitelabel/book_details/book_details_page.dart' as _i6;
import 'package:whitelabel/book_list/book_list_page.dart' as _i5;
import 'package:whitelabel/home/home_page.dart' as _i1;
import 'package:whitelabel/login_page.dart' as _i2;
import 'package:whitelabel/my_books/my_books_page.dart' as _i8;
import 'package:whitelabel/profile/profile_page.dart' as _i7;
import 'package:whitelabel/settings/settings_page.dart' as _i4;

class RootRouter extends _i3.RootStackRouter {
  RootRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i3.AdaptivePage<String>(
          routeData: routeData, child: const _i1.HomePage());
    },
    LoginRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.LoginPage());
    },
    BooksTab.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.EmptyRouterPage());
    },
    ProfileTab.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.EmptyRouterPage());
    },
    SettingsTab.name: (routeData) {
      final pathParams = routeData.pathParams;
      final args = routeData.argsAs<SettingsTabArgs>(
          orElse: () => SettingsTabArgs(tab: pathParams.getString('tab')));
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i4.SettingsPage(key: args.key, tab: args.tab));
    },
    BookListRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i5.BookListPage());
    },
    BookDetailsRoute.name: (routeData) {
      final pathParams = routeData.pathParams;
      final args = routeData.argsAs<BookDetailsRouteArgs>(
          orElse: () =>
              BookDetailsRouteArgs(id: pathParams.getInt('book', -1)));
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i6.BookDetailsPage(id: args.id, key: args.key));
    },
    ProfileRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i7.ProfilePage());
    },
    MyBooksRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<MyBooksRouteArgs>(
          orElse: () => MyBooksRouteArgs(
              filter: queryParams.optString('filter', 'none')));
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i8.MyBooksPage(key: args.key, filter: args.filter));
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(HomeRoute.name, path: '/', children: [
          _i3.RouteConfig(BooksTab.name, path: 'books', children: [
            _i3.RouteConfig(BookListRoute.name, path: ''),
            _i3.RouteConfig(BookDetailsRoute.name, path: ':id')
          ]),
          _i3.RouteConfig(ProfileTab.name, path: 'profile', children: [
            _i3.RouteConfig(ProfileRoute.name, path: ''),
            _i3.RouteConfig(MyBooksRoute.name, path: 'my-books')
          ]),
          _i3.RouteConfig(SettingsTab.name, path: 'settings/:tab')
        ]),
        _i3.RouteConfig(LoginRoute.name, path: '/login')
      ];
}

/// generated route for [_i1.HomePage]
class HomeRoute extends _i3.PageRouteInfo<void> {
  const HomeRoute({List<_i3.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for [_i2.LoginPage]
class LoginRoute extends _i3.PageRouteInfo<void> {
  const LoginRoute() : super(name, path: '/login');

  static const String name = 'LoginRoute';
}

/// generated route for [_i3.EmptyRouterPage]
class BooksTab extends _i3.PageRouteInfo<void> {
  const BooksTab({List<_i3.PageRouteInfo>? children})
      : super(name, path: 'books', initialChildren: children);

  static const String name = 'BooksTab';
}

/// generated route for [_i3.EmptyRouterPage]
class ProfileTab extends _i3.PageRouteInfo<void> {
  const ProfileTab({List<_i3.PageRouteInfo>? children})
      : super(name, path: 'profile', initialChildren: children);

  static const String name = 'ProfileTab';
}

/// generated route for [_i4.SettingsPage]
class SettingsTab extends _i3.PageRouteInfo<SettingsTabArgs> {
  SettingsTab({_i9.Key? key, required String tab})
      : super(name,
            path: 'settings/:tab',
            args: SettingsTabArgs(key: key, tab: tab),
            rawPathParams: {'tab': tab});

  static const String name = 'SettingsTab';
}

class SettingsTabArgs {
  const SettingsTabArgs({this.key, required this.tab});

  final _i9.Key? key;

  final String tab;
}

/// generated route for [_i5.BookListPage]
class BookListRoute extends _i3.PageRouteInfo<void> {
  const BookListRoute() : super(name, path: '');

  static const String name = 'BookListRoute';
}

/// generated route for [_i6.BookDetailsPage]
class BookDetailsRoute extends _i3.PageRouteInfo<BookDetailsRouteArgs> {
  BookDetailsRoute({int id = -1, _i9.Key? key})
      : super(name,
            path: ':id',
            args: BookDetailsRouteArgs(id: id, key: key),
            rawPathParams: {'book': id});

  static const String name = 'BookDetailsRoute';
}

class BookDetailsRouteArgs {
  const BookDetailsRouteArgs({this.id = -1, this.key});

  final int id;

  final _i9.Key? key;
}

/// generated route for [_i7.ProfilePage]
class ProfileRoute extends _i3.PageRouteInfo<void> {
  const ProfileRoute() : super(name, path: '');

  static const String name = 'ProfileRoute';
}

/// generated route for [_i8.MyBooksPage]
class MyBooksRoute extends _i3.PageRouteInfo<MyBooksRouteArgs> {
  MyBooksRoute({_i9.Key? key, String? filter = 'none'})
      : super(name,
            path: 'my-books',
            args: MyBooksRouteArgs(key: key, filter: filter),
            rawQueryParams: {'filter': filter});

  static const String name = 'MyBooksRoute';
}

class MyBooksRouteArgs {
  const MyBooksRouteArgs({this.key, this.filter = 'none'});

  final _i9.Key? key;

  final String? filter;
}
