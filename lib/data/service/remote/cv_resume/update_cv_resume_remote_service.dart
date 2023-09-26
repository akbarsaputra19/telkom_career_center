import 'package:http/http.dart';
import 'package:telkom_career/base/base_config.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/request/cvresume/cvresume_request.dart';

class UpdateCvResumeRemoteService {
  Client client = Client();
  Future<Response> updateCvResume(CvresumeRequest request, AuthenticationHeaderRequest header) async {
    final url = Uri.http(
      BaseConfig.BASE_DOMAIN_MOC,
      BaseConfig.BASE_PATH_MOC + BaseConfig.UPDATE_CV_RESUME
    );
    var multipartRequest = MultipartRequest('POST', url);
    var pathFile = MultipartFile.fromBytes("file", request.cvResumeFile!.readAsBytesSync());
    multipartRequest.files.add(pathFile);
    multipartRequest.headers.addAll(header.toHeader());

    var streamedResponse = await multipartRequest.send();
    var response = await Response.fromStream(streamedResponse);

    return response;
  }
}