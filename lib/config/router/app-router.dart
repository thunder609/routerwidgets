import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/buttons/buttons_screen.dart';
import 'package:widgets_app/presentation/screens/cards/cards_screen.dart';
import 'package:widgets_app/presentation/screens/progress%20/progress_screen.dart';
import 'package:widgets_app/presentation/screens/screen.dart';

import '../../presentation/screens/animated/animated_screen.dart';
import '../../presentation/screens/home/home_screen.dart';

// GoRouter configuration
final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/buttons',
      name: ButtonsScreen.name,
      builder: (context, state) => ButtonsScreen(),
    ),
    GoRoute(
      path: '/cards',
      name:CardsScreen.name,
      builder: (context, state) => CardsScreen(),
    ),
    GoRoute(
      path: '/progress',
      name:ProgressScreen.name,
      builder: (context, state) => ProgressScreen(),
    ),
    GoRoute(
      path: '/snackBar',
      name:SnackBarScreen.name,
      builder: (context, state) => SnackBarScreen(),
    ),
    GoRoute(
      path: '/animated',
      name:AnimaredScreen.name,
      builder: (context, state) => AnimaredScreen(),
    ),
    GoRoute(
      path: '/iu-controls',
      name:IuControlSceen.name,
      builder: (context, state) => IuControlSceen(),
    ),
    GoRoute(
      path: '/tutorials',
      name:TutorialScreen.name,
      builder: (context, state) => TutorialScreen(),
    ),
  ],
);