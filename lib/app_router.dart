import 'package:firebase_proj/domain/item_entity.dart';
import 'package:firebase_proj/presentation/details_screen.dart';
import 'package:firebase_proj/presentation/home_screen.dart';
import 'package:firebase_proj/presentation/login_screen.dart';
import 'package:firebase_proj/presentation/profile_screen.dart';
import 'package:firebase_proj/presentation/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class AppRouter {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/register',
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: '/main',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/profile',
        builder: (context, state) => const ProfileScreen(),
      ),
      GoRoute(
        path: '/details',
        builder: (context, state) => DetailScreen(item: state.extra as ItemModel),
      ),
    ],
  );
}
