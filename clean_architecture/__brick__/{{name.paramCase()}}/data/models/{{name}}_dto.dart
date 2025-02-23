part of 'models.dart';

@freezed
class {{name.pascalCase()}}DTO with _${{name.pascalCase()}}DTO{
  const factory {{name.pascalCase()}}DTO() = _{{name.pascalCase()}}DTO;

  factory {{name.pascalCase()}}DTO.fromJson(Map<String, dynamic> json) => _${{name.pascalCase()}}DTOFromJson(json);
}