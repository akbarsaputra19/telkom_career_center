import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telkom_career/data/repository/company/company_data_repository_impl.dart';
import 'package:telkom_career/data/repository/listjob/list_job_repository_impl.dart';
import 'package:telkom_career/data/repository/lists_company_repository/lists_company_data_repository_impl.dart';
import 'package:telkom_career/data/repository/login_moc/login_repositorymoc_impl.dart';
import 'package:telkom_career/data/repository/registers_repository/registers_repository.impl.dart';
import 'package:telkom_career/presentation/navigation/SARoute.dart';
import 'package:flutter/services.dart';
import 'package:telkom_career/presentation/pages/company/cubit/company_data_cubit.dart';
import 'package:telkom_career/presentation/pages/jobs/cubit/list_job_cubit.dart';
import 'package:telkom_career/presentation/pages/login_moc/cubit/loginmoc_cubit.dart';
import 'package:telkom_career/presentation/pages/registers/bloc/registers_bloc.dart';
import 'package:telkom_career/presentation/pages/search/cubit/lists_company_data_cubit.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginmocCubit(LoginRepositoryImplMoc()),
        ),
        BlocProvider(
          create: (context) => RegistersBloc(RegistersRepositoryImpl()),
        ),
        BlocProvider(
          create: (context) => CompanyDataCubit(CompanyDataRepositoryImpl()),
        ),
        BlocProvider(
          create: (context) =>
              ListsCompanyDataCubit(ListsCompanyDataRepositoryImpl()),
        ),
        BlocProvider(
          create: (context) => ListJobCubit(ListJobRepositoryImpl()),
        ),
      ],
      child: MaterialApp.router(
        routerDelegate: saRouter.routerDelegate,
        routeInformationParser: saRouter.routeInformationParser,
        routeInformationProvider: saRouter.routeInformationProvider,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
