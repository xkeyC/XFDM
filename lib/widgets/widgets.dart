import 'package:fluent_ui/fluent_ui.dart';
import 'package:go_router/go_router.dart';

CustomTransitionPage<T> myPageBuilder<T>(
    BuildContext context, GoRouterState state, Widget child) {
  return CustomTransitionPage(
      child: child,
      transitionDuration: const Duration(milliseconds: 150),
      reverseTransitionDuration: const Duration(milliseconds: 150),
      transitionsBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation, Widget child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0.0, 1.0),
            end: const Offset(0.0, 0.0),
          ).animate(CurvedAnimation(
            parent: animation,
            curve: Curves.easeInOut,
          )),
          child: child,
        );
      });
}

Widget makeBodyContainer(BuildContext context,Widget child) {
  return Container(
    decoration: BoxDecoration(
      color: FluentTheme.of(context).scaffoldBackgroundColor,
      borderRadius: BorderRadius.circular(9),
    ),
    child: child,
  );
}