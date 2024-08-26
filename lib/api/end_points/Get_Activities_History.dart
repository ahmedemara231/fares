import 'dart:io';

import 'package:dio/dio.dart';

import '../constants.dart';

Future<void> getActivitiesHistory()async
{
  final response = await dio.get(
      'Attendance/GetAttendanceLogHistory',
      options: Options(
        headers:
        {
          HttpHeaders.authorizationHeader : 'Bearer token'
        }
      ),
      queryParameters:
      {
        'startDate' : '14/01/2024',
        'endDate' : '14/01/2024',
      }
  );
  print(response.data);
}