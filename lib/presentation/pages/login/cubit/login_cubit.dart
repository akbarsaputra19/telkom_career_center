import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/model/login/login_user_data.dart';
import 'package:telkom_career/domain/model/request/login/login_request.dart';
import 'package:telkom_career/domain/repository/login/login_repository.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepository repository;
  LoginCubit(
    this.repository,
  ) : super(LoginInitial());

  Future<void> onSubmitLogin(String? email, String? password) async {
    emit(LoginIsLoading());
    final request = LoginRequest(email!, password!);
    final response = await repository.submitLogin(request);
    if (response is ResultSuccess) {
      emit(LoginIsSuccess(
        data: (response as ResultSuccess).data,
      ));
    } else {
      emit(LoginIsFailed(
        message: (response as ResultError).message));
    }
  }
}
