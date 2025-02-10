import 'package:configuration/configuration.dart';
{{#isRiverpod}}
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
{{/isRiverpod}}
import 'package:utils/utils.dart';

import '../models/models.dart';

part 'datasources.g.dart';
part '{{name}}_service.dart';
part '{{name}}_dao.dart';
part '{{name}}_local_ds.dart';
part '{{name}}_remote_ds.dart';
