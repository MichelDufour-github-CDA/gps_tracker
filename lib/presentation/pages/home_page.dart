import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const name = 'home';

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Geolocator'),
    ),
    body: const Center(
          child: Text('Hello Mitch'),
        ),
  );
}