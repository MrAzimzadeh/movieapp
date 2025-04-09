import 'package:flutter/material.dart';
import 'package:movieapp/pages/favorites_page.dart';
import 'package:movieapp/pages/home/home_pages.dart';
import 'package:movieapp/pages/search_page.dart';
import 'package:movieapp/pages/settings_page.dart';
import 'package:movieapp/utils/app_colors.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key});

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
     HomePages(),
     SearchPage(),
     FavoritesPage(),
     SettingsPage(),
  ]; 

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: _pages[_selectedIndex], 
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: AppColors.textfieldSide,
        unselectedItemColor: AppColors.movieText,
        items: _buildBottomNavigationBarItems(),
      ),
    );
  }
}


List<BottomNavigationBarItem> _buildBottomNavigationBarItems() {
  return [
    _bottomNavBarItem(icon: Icons.home, label: "Home"),
    _bottomNavBarItem(icon: Icons.search, label: "Search"),
    _bottomNavBarItem(icon: Icons.favorite, label: "Favorites"),
    _bottomNavBarItem(icon: Icons.settings, label: "Settings"),
  ];
}

BottomNavigationBarItem _bottomNavBarItem({
  required IconData icon,
  required String label,
}) {
  return BottomNavigationBarItem(
    icon: Icon(icon),
    label: label,
  );
}
