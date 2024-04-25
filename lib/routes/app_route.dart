
import 'package:gh_tools/freatures/gists/presentation/gists_screen.dart';
import 'package:gh_tools/freatures/settings/presentation/settings_screen.dart';
import 'package:go_router/go_router.dart';
import '../freatures/home/presentation/home_screen.dart';
import 'not_found_screen.dart';

enum AppRoute {
  home,
  settings,
  gists,
}

final goRouter = GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: false,
    routes: [
      GoRoute(
          path: '/gists',
          name: AppRoute.home.name,
          builder: (context, state) => HomeScreen(),
          routes: [
            GoRoute(
                path: 'settings',
                name: AppRoute.settings.name,
                builder: (context, state) => SettingsScreen(),
                routes: []
            ),
            GoRoute(
                path: 'gists',
                name: AppRoute.gists.name,
                builder: (context, state) => GistsScreen(),
                routes: []
            )
          ]
      )
    ],
    errorBuilder: (context, state) {
      return const NotFoundScreen();
    }
);