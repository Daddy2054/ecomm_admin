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
              title: 'Dashboard', icon: Icons.dashboard_rounded, route: ''),
          AdminMenuItem(
              title: 'Vendors', icon: Icons.people_rounded, route: ''),
          AdminMenuItem(
              title: 'Withdrawal', icon: Icons.attach_money, route: ''),
          AdminMenuItem(
              title: 'Orders', icon: Icons.shopping_cart_rounded, route: ''),
              AdminMenuItem(
              title: 'Categories', icon: Icons.category, route: ''),
              AdminMenuItem(
              title: 'Products', icon: Icons.shopping_cart_rounded, route: ''),
              AdminMenuItem(
              title: 'Upload Banners', icon: Icons.add_a_photo_rounded, route: ''),
        ],
        selectedRoute: '',
      ),
    );
  }
}
