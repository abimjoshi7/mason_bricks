part of 'datasources.dart';

@RestApi()
abstract class {{name.pascalCase()}}Service {
  factory {{name.pascalCase()}}Service(Dio dio, {String baseUrl}) = _{{name.pascalCase()}}Service;

  @GET('/')
  Future<List<{{name.pascalCase()}}Dto>> get{{name.pluralCamelCase()}}();
}