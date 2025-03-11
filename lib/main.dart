import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home/page/home.dart';

void main() {
  runApp(const FreebeesEcom());
}

class FreebeesEcom extends StatelessWidget {
  const FreebeesEcom({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Freebees E-com",
      home: Home(),
    );
  }
}
