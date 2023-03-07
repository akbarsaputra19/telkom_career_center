import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/model/register/register_user_data.dart';
import 'package:telkom_career/domain/repository/register/register_repository.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final RegisterRepository registerRepository;
  RegisterBloc(this.registerRepository) : super(RegisterInitial()) {
    on<UserRegisterEvent>((event, emit) async{
      emit(RegisterIsLoading());
      final response = await registerRepository.userRegister(
        event.email, event.username, event.password);
        if (response is ResultSuccess) {
          emit(RegisterIsSuccess(data: (response as ResultSuccess).data));
        } else if(response is ResultError){
          emit(RegisterIsFailed(message: "Register Gagal"));
        }
    });
  }
}
