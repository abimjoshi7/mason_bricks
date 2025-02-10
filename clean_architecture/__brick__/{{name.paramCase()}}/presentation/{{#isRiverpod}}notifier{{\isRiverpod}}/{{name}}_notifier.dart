part of 'notifier.dart';

@riverpod
class {{name.pascalCase()}}Notifier extends _${{name.pascalCase()}}Notifier {
  @override
  BaseState<{{name}}State> build() {
    return BaseState.initial();
  }
}