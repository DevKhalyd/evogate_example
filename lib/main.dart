import 'package:flutter/material.dart';

import 'features/home/home_container.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Evogate',
      home: HomeContainer(),
      debugShowCheckedModeBanner: false,
    );
  }
}
