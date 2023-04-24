import 'package:go_router/go_router.dart';
import '../pages/pages.dart';
import 'Routes.dart';

final GoRouter saRouter = GoRouter(initialLocation: "/education", routes: [
  GoRoute(
      path: "/login",
      name: Routes.loginPage,
      builder: (context, state) => const LoginPage()),
  GoRoute(
      path: "/register",
      name: Routes.registerPage,
      builder: (context, state) => const Register()),
  GoRoute(
      path: "/detail",
      name: Routes.detailPage,
      builder: (context, state) => const DetailPekerjaan()),
  GoRoute(
      path: "/sudah",
      name: Routes.sudahMelamarPage,
      builder: (context, state) => const SudahMelamar()),
  GoRoute(
      path: "/terkirim",
      name: Routes.lamaranTerkirimPage,
      builder: (context, state) => const LamaranTerkirim()),
  GoRoute(
      path: "/forpassuc",
      name: Routes.forpassucPage,
      builder: (context, state) => const PasswordPage()),
  GoRoute(
      path: "/empty",
      name: Routes.lowonganEmptyPage,
      builder: (context, state) => const LowonganEmpty()),
  GoRoute(
      path: "/nonaktif",
      name: Routes.detailNonaktifPage,
      builder: (context, state) => const Nonaktif()),
  GoRoute(
      path: "/aktif",
      name: Routes.detailAktifPage,
      builder: (context, state) => const LowonganAktif()),
  GoRoute(
      path: "/resume",
      name: Routes.inputCVResumePage,
      builder: (context, state) => const InputResume()),
  GoRoute(
      path: "/portfolio",
      name: Routes.inputPortfolioPage,
      builder: (context, state) => const InputPortfolio()),
  GoRoute(
      path: "/experience",
      name: Routes.inputWorkExperience,
      builder: (context, state) => const WorkExperience()),
  GoRoute(
      path: "/education",
      name: Routes.inputEducation,
      builder: (context, state) => const InputEducation()),
  ]
);