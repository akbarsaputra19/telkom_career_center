import 'package:http/http.dart';
import 'package:telkom_career/base/base_config.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/request/portfolio/portfolio_request.dart';

class UpdatePortfolioRemoteService {
  Client client = Client();
  Future<Response> updatePortfolio(PortfolioRequest request, AuthenticationHeaderRequest header) async {
    final url = Uri.http(
      BaseConfig.BASE_DOMAIN_MOC,
      BaseConfig.BASE_PATH_MOC + BaseConfig.UPDATE_PORTOFOLIO
    );
    var multipartRequest = MultipartRequest('POST', url);

    if (request.portfolioFile != null) {
      multipartRequest.files.add(await MultipartFile.fromPath(
        "file",
        request.portfolioFile!.path)
      );
    }
    multipartRequest.headers.addAll(header.toHeader());

    var streamedResponse = await multipartRequest.send();
    var response = await Response.fromStream(streamedResponse);
    
    return response;
  }
}