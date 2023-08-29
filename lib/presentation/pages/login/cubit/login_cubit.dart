part of '../pages.dart';

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
