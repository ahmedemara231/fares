import 'dart:io';
import 'package:dio/dio.dart';
import '../constants.dart';

Future<void> recordAttendanceOrDeprature()async
{
  final response = await dio.post(
      'Attendance/SaveAttendanceLog',
      options: Options(
          headers:
          {
            HttpHeaders.authorizationHeader : 'Bearer token'
          }
      ),
      queryParameters:
      {
        'time' : '2024-01-03T08:53:25.719Z'
      }
  );
  print(response.data);
}