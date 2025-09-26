import 'package:flutter/material.dart';

class Mainlayout extends StatefulWidget {
  const Mainlayout({super.key});

  @override
  State<Mainlayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<Mainlayout> {
  int _selectedIndex = 0;

  // Titles for the AppBar
  static const List<String> _titles = [
    'Home',
    'Rent',
    'Property',
    'Tenant',
    'Settings',
  ];

  // Widgets for the Body section
  static final List<Widget> _screens = [
    const Center(child: Text("🏠 Home Screen")),
    const Center(child: Text("💰 Rent Screen")),
    const Center(child: Text("🏢 Property Screen")),
    const Center(child: Text("👤 Tenant Screen")),
    const Center(child: Text(" Settings Screen")),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_titles[_selectedIndex]), centerTitle: false),
      body: _screens[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: 'Rent',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Property',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Tenant'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
