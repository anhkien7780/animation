import 'package:animation/router/app_route.dart';
import 'package:animation/ui/pages/animated_container_app/AnimatedContainerApp.dart';
import 'package:animation/ui/pages/first_page/first_page.dart';
import 'package:animation/ui/pages/physics_card_demo/physics_card_demo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        AppRoute.mainPage: (context) => const MainPage(),
        AppRoute.pageRouteBuilderPage: (context) => const FirstPage(),
        AppRoute.physicsCardDemo: (context) => const PhysicsCardDemo(),
        AppRoute.animatedContainerApp: (context) => const AnimatedContainerApp(),
      },
      initialRoute: AppRoute.mainPage,
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoute.pageRouteBuilderPage);
              },
              child: Text("Page Route Builder"),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoute.physicsCardDemo);
              },
              child: Text("Physics Card Demo"),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoute.animatedContainerApp);
              },
              child: Text("Animated Container App"),
            ),
          ],
        ),
      ),
    );
  }
}
