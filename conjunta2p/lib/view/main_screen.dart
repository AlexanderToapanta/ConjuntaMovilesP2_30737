 import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../viewmodel/navigation_viewmodel.dart';
import 'home_view.dart';
import 'contact_view.dart';
import 'info_view.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  final List<Widget> screens = const [
    HomeView(),
    ContactView(),
    InfoView(),
  ];

  @override
  Widget build(BuildContext context) {
    final navigationVM = Provider.of<NavigationViewModel>(context);

    return Scaffold(
      body: screens[navigationVM.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navigationVM.currentIndex,
        onTap: navigationVM.changeIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            label: 'Contacto',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Información',
          ),
        ],
      ),
    );
  }
}