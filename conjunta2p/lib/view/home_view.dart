import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
      ),
      body: Center(
        child: Image.asset(
          'assets/img/logo.jpg',
          width: 250,
          height: 250,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}