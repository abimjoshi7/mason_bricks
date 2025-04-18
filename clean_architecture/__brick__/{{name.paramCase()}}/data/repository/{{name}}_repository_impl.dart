part of 'repository.dart';

class {{name.pascalCase()}}RepositoryImpl implements {{name.pascalCase()}}Repository {
  final {{name.pascalCase()}}LocalDS _localDS;
  final {{name.pascalCase()}}RemoteDS _remoteDS;

  {{name.pascalCase()}}RepositoryImpl({
    required {{name.pascalCase()}}LocalDS localDS,
    required {{name.pascalCase()}}RemoteDS remoteDS,
  }) : _localDS = localDS, _remoteDS = remoteDS;


}

{{#isRiverpod}}
@riverpod
{{name.pascalCase()}}Repository {{name}}Repository(Ref ref) {
  final localDS = ref.watch({{name}}LocalDSProvider);
  final remoteDS = ref.watch({{name}}RemoteDSProvider);
  return {{name.pascalCase()}}RepositoryImpl(localDS: localDS, remoteDS: remoteDS,);
}
{{/isRiverpod}}