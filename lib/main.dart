import 'package:flutter/material.dart';

import 'pages/home.dart';
void main() {

  runApp(const Calculat());
}


class Calculat extends StatelessWidget {
  const Calculat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
    
  }
}
