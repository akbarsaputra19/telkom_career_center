import 'package:telkom_career/base/result_entity.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/request/portfolio/portfolio_request.dart';

abstract class UpdatePortfolioRepository{
  Future<ResultEntity> updatePortfolio(AuthenticationHeadersRequestUpload header, PortfolioRequest request);
}