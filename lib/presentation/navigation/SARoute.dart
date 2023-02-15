import 'package:go_router/go_router.dart';
import '../../pages/pages.dart';
import 'Routes.dart';

final GoRouter saRouter = GoRouter(initialLocation: "/sudah", routes: [
  // GoRoute(
  //     path: "/login",
  //     name: Routes.loginPage,
  //     builder: (context, state) => const LoginPage()),
  GoRoute(
      path: "/register",
      name: Routes.registerPage,
      builder: (context, state) => const RegisterPage()),
  GoRoute(
      path: "/detail",
      name: Routes.detailPage,
      builder: (context, state) => const DetailPekerjaan()),
  GoRoute(
      path: "/sudah",
      name: Routes.sudahMelamarPage,
      builder: (context, state) => const SudahMelamar()),
  // GoRoute(
  //     path: "/updatepass",
  //     name: Routes.updatepassPage,
  //     builder: (context, state) => const UpdatePass()),
  GoRoute(
      path: "/forpassuc",
      name: Routes.forpassucPage,
      builder: (context, state) => const PasswordPage()),
  // GoRoute(
  //     path: "/home",
  //     name: Routes.homePage,
  //     builder: (context, state) => const Home()),
]
);