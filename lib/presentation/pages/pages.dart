// ignore_for_file: unnecessary_import

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:telkom_career/data/repository/cv_resume/update_cv_resume_repository_impl.dart';
import 'package:telkom_career/data/repository/education/repository_education_impl.dart';
import 'package:telkom_career/data/repository/forget_password/forget_password_otp_repository_impl.dart';
import 'package:telkom_career/data/repository/forget_password/forget_password_repository_impl.dart';
import 'package:telkom_career/data/repository/forget_password/forget_password_update_repository_impl.dart';
import 'package:telkom_career/data/repository/jobs_detail/jobs_detail_repository_impl.dart';
import 'package:telkom_career/data/repository/portfolio/update_portfolio_repository_impl.dart';
import 'package:telkom_career/data/repository/profile/profile_change_password_repository_impl.dart';
import 'package:telkom_career/data/repository/profile/profile_data_repository_impl.dart';
import 'package:telkom_career/data/repository/profile/profile_update_ability_repository_impl.dart';
import 'package:telkom_career/data/repository/profile/profile_update_language_repository_impl.dart';
import 'package:telkom_career/data/repository/register/register_repository_impl.dart';
import 'package:telkom_career/data/repository/work_experience/add_work_experience_repository_impl.dart';
import 'package:telkom_career/domain/model/data/profile/ability_data.dart';
import 'package:telkom_career/domain/model/data/profile/education_data.dart';
import 'package:telkom_career/domain/model/data/profile/profile_edit_profile_data.dart';
import 'package:telkom_career/domain/model/data/profile/work_experience_data.dart';
import 'package:telkom_career/domain/model/request/profile/cvresume/cvresume_request.dart';
import 'package:telkom_career/domain/model/request/forget_password/forget_password_otp_request.dart';
import 'package:telkom_career/domain/model/request/forget_password/forget_password_request.dart';
import 'package:telkom_career/domain/model/request/forget_password/forget_password_update_request.dart';
import 'package:telkom_career/domain/model/request/login_request_moc/login_requestmoc.dart';
import 'package:telkom_career/domain/model/request/profile/education/update_education_request.dart';
import 'package:telkom_career/domain/model/request/profile/portfolio/portfolio_request.dart';
import 'package:telkom_career/domain/model/request/profile/profile_change_password/profile_change_password_request.dart';
import 'package:telkom_career/domain/model/request/profile/profile_edit_profile/profile_edit_profile_request.dart';
import 'package:telkom_career/domain/model/request/profile/profile_update_ability/profile_update_ability_request.dart';
import 'package:telkom_career/domain/model/request/profile/profile_update_language/profile_update_language_request.dart';
import 'package:telkom_career/domain/model/request/profile/work_experience/add_work_experience_request.dart';
import 'package:telkom_career/domain/model/request/register/register_request.dart';
import 'package:telkom_career/domain/model/request/send_application/send_application_request.dart';
import 'package:telkom_career/presentation/pages/company/cubit/about_company_data_cubit.dart';
import 'package:telkom_career/presentation/pages/company/cubit/jobs_company_data_cubit.dart';
import 'package:telkom_career/presentation/pages/forget_password/cubit/forget_password_cubit.dart';
import 'package:telkom_career/presentation/pages/forget_password/cubit/forget_password_otp_cubit.dart';
import 'package:telkom_career/presentation/pages/forget_password/cubit/forget_password_update_cubit.dart';
import 'package:telkom_career/presentation/pages/jobs_detail/cubit/jobs_detail_cubit.dart';
import 'package:telkom_career/presentation/pages/jobs_detail/cubit/send_application_cubit.dart';
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
import 'package:file_picker/file_picker.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_html/flutter_html.dart';

import 'package:image_picker/image_picker.dart';
import 'package:telkom_career/data/repository/company/company_data_repository_impl.dart';
import 'package:telkom_career/data/repository/listjob/list_job_repository_impl.dart';
import 'package:telkom_career/data/repository/lists_company_repository/lists_company_data_repository_impl.dart';
import 'package:telkom_career/data/repository/login_moc/login_repositorymoc_impl.dart';
import 'dart:io';

import 'package:telkom_career/data/utilities/commons.dart';
import 'package:telkom_career/presentation/navigation/Routes.dart';
import 'package:telkom_career/presentation/pages/jobs/cubit/list_job_cubit.dart';
import 'package:telkom_career/presentation/pages/login_moc/cubit/loginmoc_cubit.dart';

import 'package:telkom_career/presentation/pages/company/cubit/company_data_cubit.dart';
import 'package:telkom_career/presentation/pages/search/cubit/lists_company_data_cubit.dart';

//PART//
//login
part 'login_moc/login_screen_moc.dart';

//register
part 'register/register.dart';

//resetpassword
part 'forget_password/forgot_pasword_update_password.dart';
part 'forget_password/forgot_password_email_sent.dart';
part 'forget_password/forget_password.dart';
part 'forgot_password/forpas_success.dart';

//home
part 'home/home_screen.dart';

//pekerjaan
part 'jobs/jobs_screen.dart';

// COMPANY
part 'company/company_screen.dart';

// NOTIFIKASI
part 'notifikasi/notifikasi_screen.dart';

// Profile
part 'profile/profile_blank.dart';
part 'profile/profile_settings.dart';
part 'profile/profile_change_password.dart';
part 'profile/profile_edit_profile.dart';
part 'profile/ability/profile_input_ability.dart';
part 'profile/language/profile_input_language.dart';

// akbar
part 'profile/education/input_education.dart';
part 'profile/portfolio/input_portfolio.dart';
part 'jobs_detail/detail_pekerjaan.dart';
part 'profile/work_experience/input_work_experience.dart';
part 'profile/cv_resume/input_cvresume.dart';
part 'pekerjaan/daftar_pelamar_lowongan_empty.dart';
part 'pekerjaan/detail_pekerjaan_lowongan_aktif.dart';
part 'pekerjaan/detail_pekerjaan_lowongan_nonaktif.dart';
part 'pekerjaan/lamaran_terkirim.dart';
part 'pekerjaan/sudah_melamar.dart';

//search
part 'search/search_screen.dart';
