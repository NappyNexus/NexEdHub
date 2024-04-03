import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nexedhub/view/loginScreen/Screens/admin_log_screen.dart';
import 'package:nexedhub/view/loginScreen/Screens/login_screen.dart';

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const LogInScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'adminLogin',
          builder: (BuildContext context, GoRouterState state) {
            return const AdminLogScreen();
          },
        ),
      ],
    ),
  ],
);
