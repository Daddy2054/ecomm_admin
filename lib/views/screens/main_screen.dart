import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      body: const Text('dashboard'),
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        backgroundColor: Colors.yellow.shade900,
        title: const Text(
          'Management',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      sideBar: const SideBar(
        items: [
          AdminMenuItem(
              title: 'Categories', icon: Icons.category_rounded, route: ''),
          AdminMenuItem(
              title: 'Categories', icon: Icons.category_rounded, route: ''),
          AdminMenuItem(
              title: 'Categories', icon: Icons.category_rounded, route: ''),
          AdminMenuItem(
              title: 'Categories', icon: Icons.category_rounded, route: ''),
        ],
        selectedRoute: '',
      ),
    );
  }
}
