import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:fridge/firebase_options.dart';
import 'package:fridge/src/core/util/logger.dart';

class AppRunner {
  Future<void> initializeAndRun() async {
    final binding = WidgetsFlutterBinding.ensureInitialized();

    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    // Preserve splash screen
    binding.deferFirstFrame();

    // Override logging
    FlutterError.onError = logger.logFlutterError;
    WidgetsBinding.instance.platformDispatcher.onError =
        logger.logPlatformDispatcherError;

    Future<void> initializeAndRun() async {
      try {
        // final result = await const InitializationProcessor().initialize();
        // runApp(
        //    App with result pram
        // );
      } catch (e, stackTrace) {
        logger.error('Initialization failed', error: e, stackTrace: stackTrace);
        // In this place we can ran app with error if init process was finished with error;
        // runApp(
        //   Initialization Failed App,
        // );
      } finally {
        // Allow rendering
        binding.allowFirstFrame();
      }
    }

    // Run the app
    await initializeAndRun();
  }
}
