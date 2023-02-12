import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

final logger = Logger(
  level: kDebugMode ? Level.debug : Level.info,
  printer: PrettyPrinter(
    methodCount: 0,
    excludeBox: {
      Level.verbose: true,
      Level.debug: true,
      Level.info: true,
      Level.warning: true,
      Level.error: false,
      Level.wtf: false,
      Level.nothing: false,
    },
  ),
);
