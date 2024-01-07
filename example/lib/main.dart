import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:review_manager/review_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _reviewManagerPlugin = ReviewManager();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Image.asset(
                  'assets/logo.png',
                  width: 200,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
                onPressed: () async {
                  try {
                    await _reviewManagerPlugin.requestReviewIfAppropriate();
                  } catch (exception) {
                    if (kDebugMode) {
                      print(exception);
                    }
                  }
                },
                child: const Text('Request Review'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
