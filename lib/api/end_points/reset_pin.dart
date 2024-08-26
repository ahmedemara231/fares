import 'package:dio/dio.dart';
import 'package:untitled2/api/constants.dart';

Future<void> resetPin()async
{
  final response = await dio.post(
      'Employee/ChangePin',
      queryParameters:
      {
        'nationalId' : 29803191100039,
        'Pin' : 1234
      }
  );
  print(response.data);
}