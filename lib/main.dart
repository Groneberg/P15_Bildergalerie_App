import 'package:flutter/material.dart';
import 'package:image_gallery_app/widget/gallery.dart';
import 'package:image_gallery_app/widget/profile.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
          foregroundColor: Color.fromRGBO(167, 19, 19, 1.0),
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
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
            indicatorColor: Color.fromRGBO(193, 199, 48, 1.0),
            iconTheme: WidgetStateProperty.resolveWith((states) {
            // Wenn das Element ausgewählt ist, verwende die gelbgrüne Farbe
            if (states.contains(WidgetState.selected)) {
              return IconThemeData(color: Color.fromRGBO(167, 19, 19, 1.0));
            }
            // Für nicht ausgewählte Elemente, verwende eine andere Farbe (z.B. Blau wie zuvor für Text)
            return IconThemeData(color: Color.fromRGBO(193, 199, 48, 1.0));
          }),
            labelTextStyle: WidgetStateProperty.all(
              TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Color.fromRGBO(193, 199, 48, 1.0)),
            ),
          ),
          child: Stack(
            children: [NavigationBar(
              onDestinationSelected: onDestinationSelected,
              selectedIndex: _selectedIndex,
              destinations: navigationDestinationList,
              backgroundColor: Color.fromRGBO(167, 19, 19, 1.0),
            ),
            Positioned(
              bottom: 30,
              left: MediaQuery.of(context).size.width / 2 - 16,
              child: ShaderMask(
              shaderCallback: (Rect bounds) {
                return LinearGradient(
                  colors:  [Color(0xffc7c2c3), Color(0xff2b53a7)],
                ).createShader(bounds);
              },
              blendMode: BlendMode.srcIn,
                child: SvgPicture.asset(
                    'lib/assets/images/svg/emblem.svg',
                    width: 60,
                    height: 60,
                    colorFilter: ColorFilter.mode(
                      Colors.black,
                      BlendMode.srcIn,
                    ),
                  ),
              ),
            ),
            ]
          ),
        ),
      ),
    );
  }
}
