part of 'create_{{name}}_usecase.dart';

class Create{{name.pascalCase()}}UseCase extends UseCase<int, {{name.pascalCase()}}Param> {
  final {{name.pascalCase()}}Repository _repository;

  Create{{name.pascalCase()}}UseCase({{name.pascalCase()}}Repository repository) : _repository = repository;

  @override
  Future<Either<String, int>> call({{name}}Param param) async => 
    _repository.create(params);
}
