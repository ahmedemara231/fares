import 'package:dio/dio.dart';

String baseUrl = 'http://18.224.175.116/UISAttendanceMobile/api/';
const timeout = Duration(seconds: 10);

Dio dio = Dio()
  ..options.baseUrl = baseUrl
    ..options.connectTimeout = timeout
    ..options.receiveTimeout = timeout;