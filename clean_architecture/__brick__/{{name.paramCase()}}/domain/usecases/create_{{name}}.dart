part of 'usecases.dart';
{{^isRiverpod}}
class Create{{name.pascalCase()}} extends UseCase<int, {{name.pascalCase()}}Param> {
  final {{name.pascalCase()}}Repository _repository;

  Create{{name.pascalCase()}}UseCase({{name.pascalCase()}}Repository repository) : _repository = repository;

  @override
  Future<Either<String, int>> call({{name.pascalCase()}}Param param) async => 
    _repository.create(params);
}
{{/isRiverpod}}

{{#isRiverpod}}
@riverpod
Future<Either<Exception, int>> create{{name.pascalCase()}}(Ref ref, {{name.pascalCase()}}Param param) async {
  final repository = ref.watch({{name}}RepositoryProvider);
  return await repository.create(param);
}
{{/isRiverpod}}
