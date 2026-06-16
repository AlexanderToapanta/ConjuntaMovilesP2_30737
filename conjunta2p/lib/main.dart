import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'viewmodel/navigation_viewmodel.dart';
import 'viewmodel/contact_viewmodel.dart';
import 'view/main_screen.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => NavigationViewModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => ContactViewModel(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Bar App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.hollowKnightTheme,
      home: const MainScreen(),
    );
  }
}