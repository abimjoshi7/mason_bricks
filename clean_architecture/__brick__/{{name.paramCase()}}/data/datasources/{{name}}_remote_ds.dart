part of 'datasources.dart';

abstract class {{name.pascalCase()}}RemoteDS extends RemoteDS<{{name.pascalCase()}}Entity, {{name.pascalCase()}}Param> {

}

class {{name.pascalCase()}}RemoteDSImpl implements {{name.pascalCase()}}RemoteDS {
  final ApiClient _apiClient;

  {{name.pascalCase()}}RemoteDSImpl({
    required ApiClient apiClient,
  }) : _apiClient = apiClient;


}

{{#isRiverpod}}
@riverpod
{{name.pascalCase()}}RemoteDS {{name}}RemoteDS (Ref ref) {
  final apiClient = ref.watch(apiClientProvider);
  return {{name.pascalCase()}}RemoteDSImpl(apiClient: apiClient);
}
{{/isRiverpod}}