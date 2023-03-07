import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:telkom_career/domain/model/login/login_user_data.dart';
import 'package:telkom_career/domain/model/login/login_status.dart';
import 'package:telkom_career/domain/repository/login/login_repository.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginRepository repository;
  LoginBloc(this.repository) : super(LoginInitial()) {
    on<UserLoginEvent>((event, emit) async{
      emit(LoginIsLoading());
      final response = await repository.userLogin(event.email, event.password);
      if(response is LoginIsSuccess) {
        // emit (LoginIsSuccess(logins, statuses));
      }
    });
  }
}
