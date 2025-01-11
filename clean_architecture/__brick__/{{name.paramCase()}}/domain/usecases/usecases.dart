import 'entities/entities.dart';
import 'repositories/repositories.dart';

{{#isRiverpod}}
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'usecases.g.dart';
{{/isRiverpod}}

part 'create_{{name}}_usecase.dart';
part 'delete{{name}}_usecase.dart';
part 'get{{name}}s_usecase.dart';