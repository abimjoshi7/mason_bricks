part of 'usecases.dart';

{{^isRiverpod}}
class Delete{{name.pascalCase()}} extends UseCase<int, int> {
  final {{name.pascalCase()}}Repository _repository;

  Delete{{name.pascalCase()}}UseCase({{name.pascalCase()}}Repository repository) : _repository = repository;

  @override
  Future<Either<String, int>> call(int param) async => 
    _repository.delete(param);
}
{{/isRiverpod}}

{{#isRiverpod}}
@riverpod
Future<Either<Exception, int>> delete{{name.pascalCase()}}(Ref ref, int param) async {
  final respository = ref.watch({{name.pascalCase()}}RepositoryProvider);
  return await repository.delete(param);
}
{{/isRiverpod}}
