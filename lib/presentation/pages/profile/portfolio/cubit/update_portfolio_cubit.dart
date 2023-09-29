// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/utilities/commons.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/request/portfolio/portfolio_request.dart';
import 'package:telkom_career/domain/repository/portfolio/update_portfolio_repository.dart';

part 'update_portfolio_state.dart';

class UpdatePortfolioCubit extends Cubit<UpdatePortfolioState> {
  final UpdatePortfolioRepository repository;
  UpdatePortfolioCubit(
    this.repository,
  ) : super(UpdatePortfolioInitial());

  Future<void> updatePortfolio(PortfolioRequest request) async {
    emit(UpdatePortfolioIsLoading());
    final token = await Commons().getUid();
    final response = await repository.updatePortfolio(AuthenticationHeadersRequestUpload(token), request);
    if (response is ResultSuccess) {
      emit(UpdatePortfolioIsSuccess(message: "Update Portfolio berhasil"));
    } else {
      emit(UpdatePortfolioIsFailed(message: "Update Portfolio Failed"));
    }
  }
}
