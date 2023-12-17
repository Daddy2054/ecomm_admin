import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';

import 'side_bar_screens/category_screen.dart';
import 'side_bar_screens/dashboard_screen.dart';
import 'side_bar_screens/order_screen.dart';
import 'side_bar_screens/product_screen.dart';
import 'side_bar_screens/upload_banner_screen.dart';
import 'side_bar_screens/vendor_screen.dart';
import 'side_bar_screens/withdraval_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Widget _selectedItem = const DashboardScreen();

  screenSelector(item) {
    switch (item.route) {
      case DashboardScreen.routeName:
        setState(() {
          _selectedItem = const DashboardScreen();
        });
        break;
      case VendorScreen.routeName:
        setState(() {
          _selectedItem = const VendorScreen();
        });
        break;
      case WithdravalScreen.routeName:
        setState(() {
          _selectedItem = const WithdravalScreen();
        });
        break;
      case OrderScreen.routeName:
        setState(() {
          _selectedItem = const OrderScreen();
        });
        break;
      case CategoryScreen.routeName:
        setState(() {
          _selectedItem = const CategoryScreen();
        });
        break;
      case ProductScreen.routeName:
        setState(() {
          _selectedItem = const ProductScreen();
        });
        break;
      case UploadBannerScreen.routeName:
        setState(() {
          _selectedItem = const UploadBannerScreen();
        });
        break;
      default:
        setState(() {
          _selectedItem = const DashboardScreen();
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      body: _selectedItem,
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      // appBar: AppBar(
      //   backgroundColor: Colors.yellow.shade900,
      //   title: const Text(
      //     'Management',
      //     style: TextStyle(
      //       fontWeight: FontWeight.bold,
      //       color: Colors.white,
      //     ),
      //   ),
      // ),
      sideBar: SideBar(
        items: const [
          AdminMenuItem(
            title: 'Dashboard',
            icon: Icons.dashboard_rounded,
            route: DashboardScreen.routeName,
          ),
          AdminMenuItem(
            title: 'Vendors',
            icon: Icons.people_rounded,
            route: VendorScreen.routeName,
          ),
          AdminMenuItem(
            title: 'Withdrawal',
            icon: Icons.attach_money,
            route: WithdravalScreen.routeName,
          ),
          AdminMenuItem(
            title: 'Orders',
            icon: Icons.shopping_cart_rounded,
            route: OrderScreen.routeName,
          ),
          AdminMenuItem(
            title: 'Categories',
            icon: Icons.category,
            route: CategoryScreen.routeName,
          ),
          AdminMenuItem(
            title: 'Products',
            icon: Icons.shopping_cart_rounded,
            route: ProductScreen.routeName,
          ),
          AdminMenuItem(
            title: 'Upload Banners',
            icon: Icons.add_a_photo_rounded,
            route: UploadBannerScreen.routeName,
          ),
        ],
        selectedRoute: '',
        onSelected: (item) => screenSelector(item),
        header: Container(
          height: 50,
          width: double.infinity,
          color: Colors.yellow.shade700,
          child: const Center(
            child: Text(
              'Multi Store Admin ',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        footer: Container(
          height: 50,
          width: double.infinity,
          color: const Color(0xff444444),
          child: const Center(
            child: Text(
              'footer',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
