import 'package:go_router/go_router.dart';
import 'package:gps_tracker/presentation/pages/home_page.dart';

abstract class AppRouter {
  static final router = GoRouter(
    initialLocation: '/home',
    routes: [
      GoRoute(
        path: '/home',
        name: HomePage.name,
        builder: (context, state) => const HomePage(),
      )
    ],
  );
}
