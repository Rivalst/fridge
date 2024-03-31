import 'dart:async';

import 'package:fridge/src/core/util/logger.dart';
import 'package:fridge/src/features/app/app_runner.dart';

void main() {
  logger.runLogging(
    () {
      runZonedGuarded(
        () => AppRunner().initializeAndRun(),
        (error, stackTrace) {
          logger.logZoneError(error, stackTrace);
        },
      );
    },
    const LogOptions(),
  );
}
