import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:travel_app/presentation/pages/home/home.dart';
import 'package:travel_app/utils/constants.dart';

import 'config/routes/navigation_service.dart';
import 'config/routes/route_generator.dart';
import 'config/routes/routes.dart';
import 'injection.dart';

void main() {
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
      theme: ThemeData(
        fontFamily: 'Regular',
        textTheme: theme,
      ),
      home: Home(),
    );
  }
}

/*import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(_createRoute());
          },
          child: const Text('Go!'),
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const Page2(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset(0.0, 0.0); //Offset.zero;
      const curve = Curves.easeOut;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('Page 2'),
      ),
    );
  }
}
*/
