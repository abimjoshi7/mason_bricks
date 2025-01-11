part of 'usecases.dart';

class Delete{{name.pascalCase()}}UseCase extends UseCase<int, int> {
  final {{name.pascalCase()}}Repository _repository;

  Delete{{name.pascalCase()}}UseCase({{name.pascalCase()}}Repository repository) : _repository = repository;

  @override
  Future<Either<String, int>> call(int param) async => 
    _repository.delete(param);
}