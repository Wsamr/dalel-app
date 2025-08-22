import 'package:dalel_app/core/Routes/routes_name.dart';
import 'package:dalel_app/core/services/service_locator.dart';
import 'package:dalel_app/features/auth/presentation/view/sign_in_view.dart';
import 'package:dalel_app/features/auth/presentation/view/sign_up_view.dart';
import 'package:dalel_app/features/auth/presentation/auth_cubit/auth_cubit.dart';
import 'package:dalel_app/features/onboarding/presentation/view/onboarding_VIEW.dart';
import 'package:dalel_app/features/splash/presentation/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AppNavigation {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: RoutesName.spashScreen,
        builder: (BuildContext context, GoRouterState state) => SplashScreen(),
      ),
      GoRoute(
        path: RoutesName.onboarding,
        builder: (BuildContext context, GoRouterState state) =>
            OnboardingView(),
      ),
      GoRoute(
        path: RoutesName.signIn,
        builder: (BuildContext context, GoRouterState state) => BlocProvider(
          create: (context) => getIt<AuthCubit>(),
          child: const SignInView(),
        ),
      ),
      GoRoute(
        path: RoutesName.signUp,
        builder: (BuildContext context, GoRouterState state) => BlocProvider(
          create: (context) => getIt<AuthCubit>(),
          child: const SignUpView(),
        ),
      ),
    ],
  );
}
