import 'dart:convert';

import 'package:telkom_career/base/base_remote_response.dart';
import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/data/service/remote/portfolio/update_portfolio_remote_service.dart';
import 'package:telkom_career/domain/repository/portfolio/update_portfolio_repository.dart';

class UpdatePortfolioRepositoryImpl implements UpdatePortfolioRepository {
  final portfolioRemoteService = UpdatePortfolioRemoteService();

  @override
  Future<ResultEntitiy> updatePortfolio(String id, String profileId) async {
    try{
      final response = await portfolioRemoteService.updatePortfolio(id, profileId);
      if (response.statusCode == 200 || response.statusCode == 201){
        BaseRemoteResponseCC baseResponsePortfolio = BaseRemoteResponseCC.fromJson(
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