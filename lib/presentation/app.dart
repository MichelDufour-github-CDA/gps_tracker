import 'package:flutter/material.dart';
import 'package:gps_tracker/router/app_router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routerConfig: AppRouter.router,
      );
}
