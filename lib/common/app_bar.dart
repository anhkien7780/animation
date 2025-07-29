import 'package:flutter/material.dart';

PreferredSizeWidget buildAppBar(BuildContext context){
  return AppBar(
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(Icons.arrow_back),
    ),
  );
}