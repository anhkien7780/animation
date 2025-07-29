import 'package:animation/common/app_bar.dart';
import 'package:animation/ui/pages/physics_card_demo/widgets/draggable_card.dart';
import 'package:flutter/material.dart';

class PhysicsCardDemo extends StatelessWidget {
  const PhysicsCardDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: const DraggableCard(child: FlutterLogo(size: 128)),
    );
  }
}
