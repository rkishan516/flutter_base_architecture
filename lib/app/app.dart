import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_architecture/app/common/notifiers/logger.dart';
import 'package:flutter_base_architecture/routes/app_routes.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<ScaffoldMessengerState> globalScaffoldMessengerkey =
    GlobalKey<ScaffoldMessengerState>();

class App extends ConsumerStatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  ConsumerState<App> createState() => _AppState();
}

class _AppState extends ConsumerState<App> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    logger.v('Building app');

    return ScreenUtilInit(
      designSize: const Size(1080.0, 2400.0),
      builder: (_, __) {
        return AnimatedTheme(
          duration: const Duration(milliseconds: 300),
          data: Theme.of(context),
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: FlexThemeData.light(scheme: FlexScheme.purpleBrown),
            darkTheme: FlexThemeData.dark(scheme: FlexScheme.purpleBrown),
            themeMode: ThemeMode.dark,
            routerConfig: ref.watch(appRouterProvider),
            scaffoldMessengerKey: globalScaffoldMessengerkey,
            builder: (context, child) {
              return Portal(
                child: _DevMenuOverlay(
                  child: child!,
                ),
              );
            },
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
}

class _DevMenuOverlay extends ConsumerWidget {
  final Widget child;

  const _DevMenuOverlay({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return OrientationBuilder(builder: (context, orientation) {
      return Stack(
        children: [
          child,
          if (!kDebugMode)
            SafeArea(
              child: Align(
                alignment: const Alignment(1, -0.95),
                child: Material(
                  color: Colors.transparent,
                  child: GestureDetector(
                    onTap: () {
                      if ((appNavigatorKey.currentContext != null &&
                          GoRouter.of(appNavigatorKey.currentContext!)
                              .location
                              .contains('developerMenu'))) {
                        appNavigatorKey.currentContext!
                            .pushNamed('developer_menu');
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5, bottom: 10),
                      child: RotatedBox(
                        quarterTurns: 1,
                        child: Container(
                          color: Colors.black,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 1),
                            child: Text(
                              'Dev',
                              style: TextStyle(fontSize: 11.sp),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      );
    });
  }
}
