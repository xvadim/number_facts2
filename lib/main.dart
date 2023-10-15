import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import 'core/injection/injection.dart';
import 'presentation/main_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  configureInjection(env: Environment.prod);

  runApp(const NumbersFactApp());
}

class NumbersFactApp extends StatelessWidget {
  const NumbersFactApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facts about Numbers',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainPage(title: 'Facts about Numbers'),
    );
  }
}
