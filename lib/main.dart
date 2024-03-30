import 'dart:async';

import 'package:fridge/src/core/util/logger.dart';

void main() {
  logger.runLogging(
    () {
      runZonedGuarded(
        () => null,
        (error, stackTrace) {
          logger.logZoneError(error, stackTrace);
        },
      );
    },
    const LogOptions(),
  );
}
