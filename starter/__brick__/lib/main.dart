import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/src/consumer.dart';

import 'app_widget.dart';
import 'config/configuration.dart';

void main() => Main();

class Main extends Env {
  @override
  FutureOr<HookConsumerWidget> onCreate() {
    ErrorWidget.builder = (details) {
      Zone.current.handleUncaughtError(details.exception, details.stack!);
      return const ColoredBox(color: Colors.transparent);
    };

    return AppWidget();
  }
}

