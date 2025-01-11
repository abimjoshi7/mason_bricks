part of 'entities.dart';

@freezed
class {{name.pascalCase()}} with _${{name.pascalCase()}}{
  const factory {{name.pascalCase()}}() = _{{name.pascalCase()}};

  factory {{name.pascalCase()}}.fromJson(Map<String, dynamic> json) => _${{name.pascalCase()}}FromJson(json);
}