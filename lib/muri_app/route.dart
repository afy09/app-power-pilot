import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:museum_polri/muri_app/app.dart';
import 'package:museum_polri/muri_app/view/ar.dart';
import 'package:museum_polri/muri_app/view/cari-barang.dart';
import 'package:museum_polri/muri_app/view/caribarang_category.dart';
import 'package:museum_polri/muri_app/view/edit_profile.dart';
import 'package:museum_polri/muri_app/view/home.dart';
import 'package:museum_polri/muri_app/view/leaderboard.dart';
import 'package:museum_polri/muri_app/view/onboard.dart';
import 'package:museum_polri/muri_app/view/order.dart';
import 'package:museum_polri/muri_app/view/profile.dart';
import 'package:museum_polri/muri_app/view/quiz.dart';
import 'package:museum_polri/muri_app/view/quiz_category.dart';
import 'package:museum_polri/muri_app/view/register.dart';
import 'package:museum_polri/muri_app/view/reward.dart';
import 'package:museum_polri/muri_app/view/reward_detail.dart';
import 'package:museum_polri/muri_app/view/login.dart';
import 'package:museum_polri/muri_app/view/scan.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _bottomNavKey = GlobalKey<NavigatorState>();

class AppRouter {
  final BuildContext context;
  AppRouter(this.context);

  GoRouter get router {
    final ShellRoute bottomNavRoute = ShellRoute(
      // parentNavigatorKey: _rootNavigatorKey,
      // navigatorKey: _bottomNavKey,
      builder: (context, state, child) => App(child: child),
      routes: [
        GoRoute(
          path: '/',
          // parentNavigatorKey: _bottomNavKey,
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              key: state.pageKey,
              child: const HomeScreen(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(1, 0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                );
              },
            );
          },
        ),
        GoRoute(
          path: '/leaderboard',
          // parentNavigatorKey: _bottomNavKey,
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              key: state.pageKey,
              child: const LeaderboardScreen(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(1, 0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                );
              },
            );
          },
        ),
        GoRoute(
          path: '/ar',
          // parentNavigatorKey: _bottomNavKey,
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              key: state.pageKey,
              child: const ARScreen(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(1, 0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                );
              },
            );
          },
        ),
        GoRoute(
          path: '/profile',
          // parentNavigatorKey: _bottomNavKey,
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              key: state.pageKey,
              child: const ProfileScreen(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(1, 0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                );
              },
            );
          },
        )
      ],
    );

    return GoRouter(
      navigatorKey: _rootNavigatorKey,
      initialLocation: '/onboard',
      routes: [
        bottomNavRoute,
        GoRoute(
          path: '/onboard',
          parentNavigatorKey: _rootNavigatorKey,
          pageBuilder: (context, state) {
            return MaterialPage(
              key: state.pageKey,
              child: const OnboardScreen(),
            );
          },
        ),
        GoRoute(
          path: '/register',
          parentNavigatorKey: _rootNavigatorKey,
          pageBuilder: (context, state) {
            return MaterialPage(
              key: state.pageKey,
              child: const RegisterScreen(),
            );
          },
        ),
        GoRoute(
          path: '/quiz-category',
          parentNavigatorKey: _rootNavigatorKey,
          pageBuilder: (context, state) {
            return MaterialPage(
              key: state.pageKey,
              child: const QuizCategoryScreen(),
            );
          },
        ),
        GoRoute(
          path: '/login',
          parentNavigatorKey: _rootNavigatorKey,
          pageBuilder: (context, state) {
            return MaterialPage(
              key: state.pageKey,
              child: const LoginScreen(),
            );
          },
        ),
        GoRoute(
          path: '/caribarang_category',
          parentNavigatorKey: _rootNavigatorKey,
          pageBuilder: (context, state) {
            return MaterialPage(
              key: state.pageKey,
              child: const CariBarangCategoryScreen(),
            );
          },
        ),
        GoRoute(
          path: '/quiz',
          parentNavigatorKey: _rootNavigatorKey,
          pageBuilder: (context, state) {
            return MaterialPage(
              key: state.pageKey,
              child: const QuizScreen(),
            );
          },
        ),
        GoRoute(
          path: '/cari-barang',
          parentNavigatorKey: _rootNavigatorKey,
          pageBuilder: (context, state) {
            return MaterialPage(
              key: state.pageKey,
              child: const CariBarangScreen(),
            );
          },
        ),
        GoRoute(
          path: '/reward',
          parentNavigatorKey: _rootNavigatorKey,
          pageBuilder: (context, state) {
            return MaterialPage(
              key: state.pageKey,
              child: const RewardScreen(),
            );
          },
        ),
        GoRoute(
          path: '/reward-detail',
          parentNavigatorKey: _rootNavigatorKey,
          pageBuilder: (context, state) {
            return MaterialPage(
              key: state.pageKey,
              child: const RewardDetailScreen(),
            );
          },
        ),
        GoRoute(
          path: '/edit-profile',
          parentNavigatorKey: _rootNavigatorKey,
          pageBuilder: (context, state) {
            return MaterialPage(
              key: state.pageKey,
              child: const EditProfileScreen(),
            );
          },
        ),
        // GoRoute(
        //   path: '/ar',
        //   parentNavigatorKey: _rootNavigatorKey,
        //   pageBuilder: (context, state) {
        //     return MaterialPage(
        //       key: state.pageKey,
        //       child: ARScreen(),
        //     );
        //   },
        // ),
        GoRoute(
          path: '/order',
          parentNavigatorKey: _rootNavigatorKey,
          pageBuilder: (context, state) {
            return MaterialPage(
              key: state.pageKey,
              child: OrderScreen(),
            );
          },
        ),
      ],
    );
  }
}
