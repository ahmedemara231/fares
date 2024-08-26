import 'package:dio/dio.dart';
import 'package:untitled2/api/constants.dart';

Future<void> saveEmployee()async
{
  final response = await dio.post(
      'Employee/SaveEmployee',
      queryParameters:
      {
        'nationalId' : 29803191100039,
        'Pin' : 1234
      }
  );
  print(response.data);
}