import 'package:http/http.dart';
import 'package:http_parser/http_parser.dart';
import 'package:telkom_career/base/base_config.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/request/profile/cvresume/cvresume_request.dart';

class UpdateCvResumeRemoteService {
  Client client = Client();
  Future<Response> updateCvResume(AuthenticationHeadersRequestUpload header, CvresumeRequest request) async {
    final url = Uri.http(
      BaseConfig.BASE_DOMAIN_MOC,
      BaseConfig.BASE_PATH_MOC + BaseConfig.UPDATE_CV_RESUME
    );
    var multipartRequest = MultipartRequest('POST', url);

    multipartRequest.files.add(await MultipartFile.fromPath(
        "file", request.cvResumeFile!.path,
        filename: request.cvResumeFile!.path.split("/").last,
        contentType: MediaType("file", 'pdf')));
    multipartRequest.headers.addAll(header.toHeader());

    var streamedResponse = await multipartRequest.send();
    var response = await Response.fromStream(streamedResponse);

    return response;
  }
}