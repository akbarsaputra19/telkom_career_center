import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telkom_career/data/repository/company/company_data_repository_impl.dart';
import 'package:telkom_career/data/repository/cv_resume/update_cv_resume_repository_impl.dart';
import 'package:telkom_career/data/repository/education/repository_education_impl.dart';
import 'package:telkom_career/data/repository/forget_password/forget_password_otp_repository_impl.dart';
import 'package:telkom_career/data/repository/forget_password/forget_password_repository_impl.dart';
import 'package:telkom_career/data/repository/forget_password/forget_password_update_repository_impl.dart';
import 'package:telkom_career/data/repository/jobs_detail/jobs_detail_repository_impl.dart';
import 'package:telkom_career/data/repository/listjob/list_job_repository_impl.dart';
import 'package:telkom_career/data/repository/lists_company_repository/lists_company_data_repository_impl.dart';
import 'package:telkom_career/data/repository/login_moc/login_repositorymoc_impl.dart';
import 'package:telkom_career/data/repository/portfolio/update_portfolio_repository_impl.dart';
import 'package:telkom_career/data/repository/profile/profile_change_password_repository_impl.dart';
import 'package:telkom_career/data/repository/profile/profile_data_repository_impl.dart';
import 'package:telkom_career/data/repository/profile/profile_edit_profile_repository_impl.dart';
import 'package:telkom_career/data/repository/profile/profile_update_ability_repository_impl.dart';
import 'package:telkom_career/data/repository/profile/profile_update_language_repository_impl.dart';
import 'package:telkom_career/data/repository/profile/profile_update_photo_repository_impl.dart';
import 'package:telkom_career/data/repository/register/register_repository_impl.dart';
import 'package:telkom_career/data/repository/send_application/send_application_repository_impl.dart';
import 'package:telkom_career/data/repository/work_experience/add_work_experience_repository_impl.dart';
import 'package:telkom_career/presentation/navigation/SARoute.dart';
import 'package:flutter/services.dart';
import 'package:telkom_career/presentation/pages/company/cubit/company_data_cubit.dart';
import 'package:telkom_career/presentation/pages/forget_password/cubit/forget_password_cubit.dart';
import 'package:telkom_career/presentation/pages/forget_password/cubit/forget_password_otp_cubit.dart';
import 'package:telkom_career/presentation/pages/forget_password/cubit/forget_password_update_cubit.dart';
import 'package:telkom_career/presentation/pages/jobs/cubit/list_job_cubit.dart';
import 'package:telkom_career/presentation/pages/jobs_detail/cubit/jobs_detail_cubit.dart';
import 'package:telkom_career/presentation/pages/jobs_detail/cubit/send_application_cubit.dart';
import 'package:telkom_career/presentation/pages/login_moc/cubit/loginmoc_cubit.dart';
import 'package:telkom_career/presentation/pages/profile/ability/cubit/ability_cubit.dart';
import 'package:telkom_career/presentation/pages/profile/cubit/profile_change_password_cubit.dart';
import 'package:telkom_career/presentation/pages/profile/cubit/profile_data_cubit.dart';
import 'package:telkom_career/presentation/pages/profile/cubit/profile_edit_profile_cubit.dart';
import 'package:telkom_career/presentation/pages/profile/cubit/update_photo_cubit.dart';
import 'package:telkom_career/presentation/pages/profile/cv_resume/cubit/update_cv_resume_cubit.dart';
import 'package:telkom_career/presentation/pages/profile/education/cubit/education_cubit.dart';
import 'package:telkom_career/presentation/pages/profile/language/cubit/language_cubit.dart';
import 'package:telkom_career/presentation/pages/profile/portfolio/cubit/update_portfolio_cubit.dart';
import 'package:telkom_career/presentation/pages/profile/work_experience/cubit/add_work_experience_cubit.dart';
import 'package:telkom_career/presentation/pages/register/cubit/register_cubit.dart';
import 'package:telkom_career/presentation/pages/search/cubit/lists_company_data_cubit.dart';

import 'presentation/pages/company/cubit/about_company_data_cubit.dart';
import 'presentation/pages/company/cubit/jobs_company_data_cubit.dart';

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
        /*                        LOGIN                                 */
        /*                                                              */
        BlocProvider(
          create: (context) => LoginmocCubit(LoginRepositoryImplMoc()),
        ),
        BlocProvider(
          create: (context) => RegisterCubit(RegisterRepositoryImpl()),
        ),
        BlocProvider(
          create: (context) =>
              ForgetPasswordCubit(ForgetPasswordRepositoryImpl()),
        ),
        BlocProvider(
          create: (context) =>
              ForgetPasswordOtpCubit(ForgetPasswordOtpRepositoryImpl()),
        ),
        BlocProvider(
          create: (context) =>
              ForgetPasswordUpdateCubit(ForgetPasswordUpdateRepositoryImpl()),
        ),

        /*                        COMPANY                                 */
        /*                                                                */
        BlocProvider(
          create: (context) => CompanyDataCubit(CompanyDataRepositoryImpl()),
        ),
        BlocProvider(
          create: (context) =>
              ListsCompanyDataCubit(ListsCompanyDataRepositoryImpl()),
        ),
        BlocProvider(
          create: (context) =>
              AboutCompanyDataCubit(CompanyDataRepositoryImpl()),
        ),
        BlocProvider(
          create: (context) =>
              JobsCompanyDataCubit(CompanyDataRepositoryImpl()),
        ),

        /*                        JOBS                                  */
        /*                                                              */
        BlocProvider(
          create: (context) => ListJobCubit(ListJobRepositoryImpl()),
        ),
        BlocProvider(
          create: (context) => JobsDetailCubit(JobsDetailRepositoryImpl()),
        ),
        BlocProvider(
          create: (context) => SendApplicationCubit(SendApplicationRepositoryImpl()),
        ),

        /*                       PROFILE                                    */
        /*                                                                  */
        BlocProvider(
          create: (context) => ProfileDataCubit(ProfileDataRepositoryImpl()),
        ),
        BlocProvider(
          create: (context) =>
              ProfileEditProfileCubit(ProfileEditProfileRepositoryImpl()),
        ),
        BlocProvider(
          create: (context) =>
              ProfileChangePasswordCubit(ProfileChangePasswordRepositoryImpl()),
        ),
        BlocProvider(
          create: (context) =>
              EducationCubit(UpdateEducationRepositoryImpl()),
        ),
        BlocProvider(
          create: (context) =>
              AddWorkExperienceCubit(AddWorkExperienceRepositoryImpl()),
        ),
        BlocProvider(
          create: (context) =>
              AbilityCubit(ProfileUpdateAbilityRepositoryImpl()),
        ),
        BlocProvider(
          create: (context) =>
              LanguageCubit(ProfileUpdateLanguageRepositoryImpl()),
        ),
        BlocProvider(
          create: (context) =>
              UpdateCvResumeCubit(UpdateCvResumeRepositoryImpl()),
        ),
        BlocProvider(
          create: (context) =>
              UpdatePortfolioCubit(UpdatePortfolioRepositoryImpl()),
        ),
        BlocProvider(
          create: (context) =>
              UpdatePhotoCubit(ProfileUpdatePhotoRepositoryImpl()),
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
