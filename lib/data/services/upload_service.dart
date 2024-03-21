import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:the_real_thing/config/app_config.dart';
import 'package:the_real_thing/data/responses/login_response.dart';
import 'package:the_real_thing/data/services/base_service.dart';

class UploadService extends ServiceBase<String> {
  final String path;

  UploadService(
    this.path,
  );

  @override
  Future<String> call() async {
    final result = await upload('upload', 'photo', path);
    return result['data']['url'];
  }
}
