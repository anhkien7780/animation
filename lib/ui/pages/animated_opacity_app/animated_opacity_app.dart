import 'package:animation/common/app_bar.dart';
import 'package:flutter/material.dart';

class AnimatedOpacityApp extends StatefulWidget {
  const AnimatedOpacityApp({super.key});

  @override
  State<AnimatedOpacityApp> createState() => _AnimatedOpacityAppState();
}

class _AnimatedOpacityAppState extends State<AnimatedOpacityApp> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _visible = !_visible;
          });
        },
        tooltip: "Toggle Opacity",
        child: const Icon(Icons.flip),
      ),
      body: Center(
        child: AnimatedOpacity(
          opacity: _visible ? 1.0 : 0.0,
          duration: const Duration(seconds: 1),
          child: Container(width: 200, height: 200, color: Colors.green,),
        ),
      ),
    );
  }
}
