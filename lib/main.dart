import 'package:flutter/material.dart';

import 'Apresentacao.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meu Portfólio',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Apresentacao(),
    );
  }
}
