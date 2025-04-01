part of 'notifier.dart';

@riverpod
class {{name.pascalCase()}}Notifier extends _${{name.pascalCase()}}Notifier {
  @override
  FutureOr<{{name.pascalCase()}}State> build() async {
    return const {{name.pascalCase()}}State();
  }
}