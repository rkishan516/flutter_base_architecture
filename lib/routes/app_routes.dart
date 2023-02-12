// ignore_for_file: deprecated_member_use

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_architecture/app/common/notifiers/login_data_notifier.dart';
import 'package:flutter_base_architecture/app/common/presentation/developer_page.dart';
import 'package:flutter_base_architecture/app/home/presentation/home_screen.dart';
import 'package:flutter_base_architecture/app/login/presentation/hook_screen.dart';
import 'package:flutter_base_architecture/app/splash/presentation/splash_screen.dart';
import 'package:flutter_base_architecture/routes/route_names.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_routes.g.dart';

final GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();
final RouteObserver<PageRoute> appRouteObserver = RouteObserver<PageRoute>();

@riverpod
GoRouter appRouter(AppRouterRef ref) {
  final router = ref.watch(routerNotifierProvider.notifier);
  ref.watch(loginDataNotifierProvider);

  List<NavigatorObserver>? observers = [
    appRouteObserver,
  ];

  return GoRouter(
    observers: observers,
    navigatorKey: appNavigatorKey,
    redirect: router._redirectLogic,
    initialLocation: '/splash',
    routes: router._routes,
    debugLogDiagnostics: kDebugMode,
  );
}

@riverpod
class RouterNotifier extends _$RouterNotifier {
  @override
  void build() {
    initialRouteChecked = false;
  }

  String? initialRoute;
  late bool initialRouteChecked;

  String? _redirectLogic(BuildContext context, GoRouterState state) {
    final appData = ref.read(loginDataNotifierProvider);
    if (!initialRouteChecked) {
      initialRouteChecked = true;
      initialRoute = state.location;
    }

    if (state.location == '/developerMenu') return null;
    if (appData == null) {
      if (state.location == state.namedLocation(AppRoutes.splash.name)) {
        return null;
      }
      return state.namedLocation(AppRoutes.splash.name);
    } else {
      if (appData.currUser == null) {
        if (state.location
            .contains(state.namedLocation(AppRoutes.hooks.name))) {
          return null;
        }

        return state.namedLocation(AppRoutes.hooks.name);
      }

      if (state.location == state.namedLocation(AppRoutes.splash.name)) {
        return state.namedLocation(AppRoutes.home.name);
      }

      return null;
    }
  }

  List<GoRoute> get _routes => <GoRoute>[
        GoRoute(
          name: AppRoutes.splash.name,
          path: '/splash',
          builder: (context, state) => const SplashScreen(),
        ),
        GoRoute(
          name: AppRoutes.hooks.name,
          path: '/hooks',
          builder: (context, state) => const HookScreen(),
        ),
        GoRoute(
          name: AppRoutes.home.name,
          path: '/home',
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          name: AppRoutes.developerMenu.name,
          path: '/developerMenu',
          builder: (context, state) => const DeveloperMenu(),
        ),
      ];
}
