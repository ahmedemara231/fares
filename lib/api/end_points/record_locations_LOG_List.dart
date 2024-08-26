import 'dart:io';
import 'package:dio/dio.dart';
import '../constants.dart';

Future<void> recordLocationsLOGList()async
{
  List<Map> data = [
    {
      "id": 0,
      "langitude": 31.417523320370524,
      "latitude": 31.814420292910880,
      "date": "2024-01-08T11:45:25.719Z",
      "employeeId": 21
    },
    {
      "id": 0,
      "langitude": 31.417523320370524,
      "latitude": 31.814420292910880,
      "date": "2024-01-08T11:46:25.719Z",
      "employeeId": 21
    },
    {
      "id": 0,
      "langitude": 31.417523320370524,
      "latitude": 31.814420292910880,
      "date": "2024-01-08T11:47:25.719Z",
      "employeeId": 21
    }
  ];

  final response = await dio.post(
      'Attendance/SaveLocationLog',
      options: Options(
          headers:
          {
            HttpHeaders.authorizationHeader : 'Bearer token'
          }
      ),
      data: data
  );
  print(response.data);
}