part of 'get_{{name}}s_usecase.dart';

class Get{{name.pascalCase()}}sUseCase extends UseCase<List<{{name.pascalCase()}}>, FilterParam> {
  final {{name.pascalCase()}}Repository _repository;

  Get{{name.pascalCase()}}sUseCase({{name.pascalCase()}}Repository repository) : _repository = repository;

  @override
  Future<Either<String, List<{{name.pascalCase()}}>>> call(FilterParam param) async => 
    _repository.getAll(param);
}