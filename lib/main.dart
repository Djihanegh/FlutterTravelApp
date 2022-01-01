import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:travel_app/presentation/pages/home/home.dart';
import 'package:travel_app/utils/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'config/routes/navigation_service.dart';
import 'config/routes/route_generator.dart';
import 'config/routes/routes.dart';
import 'injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  configureInjection(Environment.dev);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      initialRoute: Routes.home,
      onGenerateRoute: RouteGenerator.generateRoute,
      navigatorKey: getIt<NavigationService>().navigatorKey,
      theme: themeDate,
      home: Home(),
    );
  }
}
