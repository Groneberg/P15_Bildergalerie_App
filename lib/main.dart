import 'package:flutter/material.dart';
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
    Profile(),
  ];

  final List<NavigationDestination> navigationDestinationList = [
    NavigationDestination(icon: Icon(Icons.image), label: 'Gallery'),
    NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
  ];

  final List<AppBar> appBarList = [AppBar(
          title: Text('Gallery'),
          backgroundColor: Color.fromRGBO(167, 19, 19, 1.0),
          foregroundColor: Color.fromRGBO(193, 199, 48, 1.0),
        ), 
        AppBar(
          title: Text('Profile'),
          backgroundColor: Color.fromRGBO(193, 199, 48, 1.0),
          foregroundColor: Color.fromRGBO(43,83,167, 1.0),
        )];

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
        appBar: appBarList[_selectedIndex],
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
