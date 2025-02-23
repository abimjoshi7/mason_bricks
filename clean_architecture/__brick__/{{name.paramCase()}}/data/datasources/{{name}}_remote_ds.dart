part of 'datasources.dart';

abstract class {{name.pascalCase()}}RemoteDS extends RemoteDS<{{name.pascalCase()}}Entity, {{name.pascalCase()}}Param> {

}

class {{name.pascalCase()}}RemoteDSImpl implements {{name.pascalCase()}}RemoteDS {
  final {{name.pascalCase()}}Service _service;

  {{name.pascalCase()}}RemoteDSImpl({
    required {{name.pascalCase()}}Service service,
  }) : _service = service;


}

{{#isRiverpod}}
@riverpod
{{name.pascalCase()}}RemoteDS {{name}}RemoteDS (Ref ref) {
  final apiClient = ref.watch(apiClientProvider);
  return {{name.pascalCase()}}RemoteDSImpl(service: {{name.pascalCase()}}Service(apiClient));
}
{{/isRiverpod}}