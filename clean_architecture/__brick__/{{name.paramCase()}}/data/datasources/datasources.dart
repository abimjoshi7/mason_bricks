{{#isRiverpod}}
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
{{/isRiverpod}}
import 'package:utils/utils.dart';

import '../models/models.dart';

part 'datasources.g.dart';
part '{{name}}_service.dart';
part '{{name}}_dao.dart';
part '{{name}}_local_ds.dart';
part '{{name}}_remote_ds.dart';
