import 'package:go_router/go_router.dart';
import '../../pages/pages.dart';
import 'Routes.dart';

final GoRouter saRouter = GoRouter(initialLocation: "/register", routes: [
  GoRoute(
      path: "/login",
      name: Routes.loginPage,
      builder: (context, state) => const LoginPage()),
  GoRoute(
      path: "/register",
      name: Routes.signUpPage,
      builder: (context, state) => const RegisterPage()),
  // GoRoute(
  //     path: "/forpass",
  //     name: Routes.forpassPage,
  //     builder: (context, state) => const ForPass()),
  GoRoute(
      path: "/conpass",
      name: Routes.conpassPage,
      builder: (context, state) => const FpEmailSent()),
  GoRoute(
      path: "/updatepass",
      name: Routes.updatepassPage,
      builder: (context, state) => const UpdatePass()),
  GoRoute(
      path: "/forpassuc",
      name: Routes.forpassucPage,
      builder: (context, state) => const PasswordPage()),
  // GoRoute(
  //     path: "/home",
  //     name: Routes.homePage,
  //     builder: (context, state) => const Home()),
]);
