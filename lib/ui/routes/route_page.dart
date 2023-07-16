import 'package:alex_astudillo_erp/ui/pages/pages.dart';
import 'package:alex_astudillo_erp/ui/pages/sign_in/cubit/sign_in_cubit.dart';
import 'package:alex_astudillo_erp/ui/pages/sign_in/sign_in_page.dart';
import 'package:alex_astudillo_erp/ui/pages/splash/cubit/splash_cubit.dart';
import 'package:alex_astudillo_erp/ui/routes/route_name.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

/// Pages availables.
class RoutePage {
  // This class is not meant to be instantiated or extended; this constructor
  // prevents instantiation and extension.
  const RoutePage._();

  /// All config routes.
  static final GoRouter router = GoRouter(
    initialLocation: RouteName.splash,
    routes: [
      GoRoute(
        name: RouteName.signIn,
        path: RouteName.signIn,
        builder: (context, state) => BlocProvider(
          create: (context) => SignInCubit(),
          child: const SignInPage(),
        ),
      ),
      GoRoute(
        name: RouteName.splash,
        path: RouteName.splash,
        builder: (context, state) => BlocProvider(
          create: (context) => SplashCubit(),
          child: const SplashPage(),
        ),
      ),
    ],
  );
}
