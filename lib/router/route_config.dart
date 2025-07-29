import 'package:animation/ui/pages/second_page/second_page.dart';
import 'package:flutter/cupertino.dart';

Route createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const SecondPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    }
  );
}
