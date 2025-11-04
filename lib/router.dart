import 'package:go_router/go_router.dart';
import 'package:landingpage_hotel/landingpage.dart';
import 'package:landingpage_hotel/menu.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) {
        final table = state.uri.queryParameters['table'];
        print("Query table: $table");
        return LandingPage(table: table);
      },
    ),
    GoRoute(
      path: "/menu/:table",
      builder: (context, state) {
        final table = state.pathParameters['table'] ?? '';
        return MenuPage(table: table);
      },
    ),
  ],
);
