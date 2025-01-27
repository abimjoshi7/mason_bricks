part of 'controller.dart';

@riverpod
class {{name.pascalCase()}}Controller extends _${{name.pascalCase()}}Controller {
  @override
  BaseState<{{name}}State> build() {
    return BaseState.initial();
  }
}