// ignore_for_file: unused_import, avoid_print

import 'dart:collection';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'dart:io';
import 'package:http/http.dart';
import 'package:telkom_career/base/base_config.dart';
import 'package:telkom_career/domain/base/authentication_header_request.dart';
import 'package:telkom_career/domain/model/request/profile/profile_update_photo/profile_update_photo_request.dart';

class ProfileUpdatePhotoRemoteService {
  Client client = Client();
  Future<Response> updateProfileUpdatePhotoRemoteService(
    AuthenticationHeadersRequestUpload header,
    File? photo,
    //String id
  ) async {
    final url = Uri.http(
      BaseConfig.BASE_DOMAIN_MOC,
      BaseConfig.BASE_PATH_MOC + BaseConfig.UPDATE_PHOTO,
    );

    print("URL : ${url.toString()}");
    //print("request Profile Update Photo : ${request.toString()}");

    var multipartRequest = MultipartRequest('POST', url);

    multipartRequest.files.add(await MultipartFile.fromPath(
        "photo", photo!.path,
        filename: photo.path.split("/").last,
        contentType: MediaType("image", 'JPG')));
    multipartRequest.headers.addAll(header.toHeader());

    var streamedResponse = await multipartRequest.send();
    var response = await Response.fromStream(streamedResponse);

    return response;
  }
}