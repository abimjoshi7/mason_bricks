part of 'get_{{name}}s_usecase.dart';

{{^isRiverpod}}
class Get{{name.pascalCase()}}s extends UseCase<List<{{name.pascalCase()}}>, FilterParam> {
  final {{name.pascalCase()}}Repository _repository;

  Get{{name.pascalCase()}}sUseCase({{name.pascalCase()}}Repository repository) : _repository = repository;

  @override
  Future<Either<String, List<{{name.pascalCase()}}>>> call(FilterParam param) async => 
    _repository.getAll(param);
}
{{/isRiverpod}}

{{#isRiverpod}}
@riverpod
Future<Either<Exception, List<{{name.pascalCase()}}>>> get{{name.pascalCase()}}s(Ref ref, [FilterParam? param]) async {
  final respository = ref.watch({{name.pascalCase()}}RepositoryProvider);
  return await repository.get(param);
}
{{/isRiverpod}}
