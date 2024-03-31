import 'package:flutter/material.dart';
import 'package:fridge/src/core/util/dependecies.dart';

class App extends StatelessWidget {
  final InitializationResult result;
  const App({
    required this.result,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SizedBox(
            width: 100,
            height: 100,
            child: ElevatedButton(
              onPressed: () => throw Exception(),
              child: const Text(
                'Send error',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
