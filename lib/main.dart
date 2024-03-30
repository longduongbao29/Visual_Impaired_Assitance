import 'package:flutter/material.dart';
import 'package:visual_impaired_app/controllers/object_detection.dart';
import '/controllers/init.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await appInit();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Visual Impaired Assistance',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  ObjectDetectorView(),
    );
  }
}
