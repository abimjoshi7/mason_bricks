part of 'datasources.dart';

@RestApi()
abstract class {{name}}Service {
  factory {{name}}Service(Dio dio, {String baseUrl}) = _{{name}}Service;

  @GET('/')
  Future<List<{{name}}Dto>> get{{name.pluralCamelCase()}}();
}