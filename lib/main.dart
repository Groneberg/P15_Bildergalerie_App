import 'package:flutter/material.dart';
// import 'package:image_gallery_app/screen/details.dart';
import 'package:image_gallery_app/widget/gallery.dart';
import 'package:image_gallery_app/widget/profile.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _selectedIndex = 0;
  final List<Widget> _pages = const [
    Gallery(),
    // Detail(),
    Profile(),
    // Add other pages here if needed
  ];

  final List<NavigationDestination> navigationDestinationList = [
    NavigationDestination(icon: Icon(Icons.image), label: 'Gallery'),
    // NavigationDestination(icon: Icon(Icons.details), label: 'Details'),
    NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
  ];

  void onDestinationSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Gallery'),
          backgroundColor: Color.fromRGBO(167, 19, 19, 1.0),
          foregroundColor: Color.fromRGBO(193, 199, 48, 1.0),
        ),
        body: _pages[_selectedIndex],
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: onDestinationSelected,
          selectedIndex: _selectedIndex,
          destinations: navigationDestinationList,
        ),
      ),
    );
  }
}
