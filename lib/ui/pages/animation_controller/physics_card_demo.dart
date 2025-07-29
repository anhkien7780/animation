import 'package:animation/ui/pages/animation_controller/widgets/draggable_card.dart';
import 'package:flutter/material.dart';

class PhysicsCardDemo extends StatelessWidget {
  const PhysicsCardDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: const DraggableCard(child: FlutterLogo(size: 128)),
    );
  }
}
