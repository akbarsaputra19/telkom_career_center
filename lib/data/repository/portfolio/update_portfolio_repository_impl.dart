import 'dart:convert';

import 'package:telkom_career/base/login_moc/base_remote_response.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/service/remote/portfolio/update_portfolio_remote_service.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/request/portfolio/portfolio_request.dart';
import 'package:telkom_career/domain/repository/portfolio/update_portfolio_repository.dart';

class UpdatePortfolioRepositoryImpl implements UpdatePortfolioRepository {
  final portfolioRemoteService = UpdatePortfolioRemoteService();

  @override
  Future<ResultEntity> updatePortfolio(PortfolioRequest request, AuthenticationHeaderRequest header) async {
    try{
      final response = await portfolioRemoteService.updatePortfolio(request, header);
      if (response.statusCode == 200) {
        BaseRemoteResponseMoc baseResponsePortfolio = BaseRemoteResponseMoc.fromJson(
          jsonDecode(response.body), (json) => null
        );
      if (baseResponsePortfolio.status == null) {
        return ResultError();
      } else if (baseResponsePortfolio.status?.code != 0) {
        return ResultError(message: baseResponsePortfolio.status?.message);
      } else {
        return ResultSuccess(baseResponsePortfolio.data);
      }
      } else {
        return ResultError(message: "");
      }
    } catch (err) {
      return ResultError(message: "");
    }
  }
}