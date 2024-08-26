import '../constants.dart';

Future<void> login()async
{
  final response = await dio.get(
      '/Employee/LoginEmployee',
      queryParameters:
      {
        'Pin' : 1234,
        'nationalId' : 14259764478567,
      }
  );
  print(response.data);
}