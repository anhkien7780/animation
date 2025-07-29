import 'package:animation/router/app_route.dart';
import 'package:animation/ui/pages/animated_container_app/AnimatedContainerApp.dart';
import 'package:animation/ui/pages/animated_opacity_app/animated_opacity_app.dart';
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
        AppRoute.animatedContainerApp: (context) =>
        const AnimatedContainerApp(),
        AppRoute.animatedOpacityApp: (context) => const AnimatedOpacityApp()
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            spacing: 5,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildOutlinedButton(
                  context: context,
                  route: AppRoute.pageRouteBuilderPage,
                  text: "Page Route Builder"
              ),
              _buildOutlinedButton(
                  context: context,
                  route: AppRoute.physicsCardDemo,
                  text: "Physic Card Demo"
              ),
              _buildOutlinedButton(
                  context: context,
                  route: AppRoute.animatedContainerApp,
                  text: "Animated Container App"
              ),
              _buildOutlinedButton(
                  context: context,
                  route: AppRoute.animatedOpacityApp,
                  text: "Animated Opacity App"
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOutlinedButton({
    required BuildContext context,
    required String route,
    required String text,
  }) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        style: ButtonStyle(),
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
        child: Text(text),
      ),
    );
  }
}
