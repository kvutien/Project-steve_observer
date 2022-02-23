/*
  Flutter 2.8.1 stable, Android Studio 2021.1 Bumblebee, Android SDK 32
  Navigate between screens of Steve Observer
 */
import 'package:flutter/material.dart';
import 'package:steve_observer/tab1.dart';
import 'package:steve_observer/tab2.dart';
import 'package:steve_observer/tab3.dart';
import 'package:steve_observer/tab4.dart';

class SteveWebview extends StatefulWidget {
  const SteveWebview({Key? key}) : super(key: key);
  @override
  _SteveWebviewState createState() => _SteveWebviewState();
}

class _SteveWebviewState extends State<SteveWebview> {
  // this key makes any widget in the widget tree access the WebView state
  // final GlobalKey webViewKey = GlobalKey();
  int _selectedIndex = 0; // Tutorial page is displayed by default
  static List<Widget> tabs = <Widget> [
    const Tab1(), // display tutorial page
    const Tab2(), // display EO Browser vegetation page
    const Tab3(), // display GEE NDVI anomaly
    const Tab4(), // display Machu Picchu explanation
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Steve_B Earth Observer PoC"),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
        foregroundColor: Colors.brown,
        toolbarHeight: 23.0,
      ),
      body: tabs[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.lightGreen[800],
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.help_outline),
            label: 'About',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.agriculture_outlined),
            label: 'EO Browser',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mode),
            label: 'Earth Engine',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mode),
            label: 'Machu Picchu',
          ),
          /* BottomNavigationBarItem(
            icon: Icon(Icons.radar),
            label: 'Card3',
          ),*/
        ],
      ),
    );
  }
}
