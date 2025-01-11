part of '../datasources.dart';

abstract class {{name.pascalCase()}}LocalDS extends LocalDS<{{name.pascalCase()}}Entity, {{name.pascalCase()}}Param> {

}

class {{name.pascalCase()}}LocalDSImpl extends {{name.pascalCase()}}LocalDS {
  final AppDatabase _db;

  {{name.pascalCase()}}LocalDSImpl({
    required AppDatabase db,
  }) : _db = db;


}

{{#isRiverpod}}
@riverpod
{{name.pascalCase()}}LocalDS {{name}}LocalDS (Ref ref) {
  final db = ref.watch(appDatabaseProvider);
  return {{name.pascalCase()}}LocalDSImpl(db: db);
}