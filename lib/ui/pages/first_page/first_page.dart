import 'package:animation/router/route_config.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OutlinedButton(
          onPressed: () {
            Navigator.of(context).push(createRoute());
          },
          child: const Text("Go"),
        ),
      ),
    );
  }
}
