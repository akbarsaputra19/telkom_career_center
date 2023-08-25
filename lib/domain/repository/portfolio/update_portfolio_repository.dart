import 'package:telkom_career/base/result_entity.dart';

abstract class UpdatePortfolioRepository{
  Future<ResultEntity> updatePortfolio(String id, String profileId);
}