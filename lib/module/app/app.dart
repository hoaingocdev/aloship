import 'package:aloship/module/module.dart';
import 'package:flutter/material.dart';

class AloshipApp extends StatelessWidget {
  const AloshipApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: createHome(),
    );
  }
}
