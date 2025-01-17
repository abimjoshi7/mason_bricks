import 'package:configuration/configuration.dart';
{{#isRiverpod}}
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
{{/isRiverpod}}
import 'package:utils/utils.dart';

import '../models/models.dart';

part 'datasources.g.dart';
part 'local/{{name}}_local_ds.dart';
part 'remote/{{name}}_remote_ds.dart';
