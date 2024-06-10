import 'package:flutter/material.dart';
import 'bodymeasure.dart';
import 'clothingmeasurement.dart';
import 'explore.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int myIndex = 0;
  /// Our dynamic AppBar content
  late String _appBarTitle;
  final List<BottomNavigationBarItem> _navBarItems = [
    const BottomNavigationBarItem(icon: Icon(Icons.window), label: "Explore"),
    const BottomNavigationBarItem(icon: Icon(Icons.scale), label: "Body"),
    const BottomNavigationBarItem(icon: Icon(Icons.person_3_sharp), label: "Clothing"),
  ];
  /// Set AppBar content based on page index
  void _setAppBarContent() {
    switch(myIndex) {
      case 0:
        setState(() {
          _appBarTitle = "Explore";
        });
        break;
      case 1:
        setState(() {
          _appBarTitle = "Body Measure";
        });
        break;
      case 2:
        setState(() {
          _appBarTitle = "Clothing Measurement";
        });
        break;
      default:
        break;
    }
  }

  List screens = [
    const Explore(),
    const BodyMeasure(),
    const ClothingMeasurement()
  ];
  @override
  void initState() {
    _setAppBarContent();
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitle),
        backgroundColor: const Color(0xFF3fceeb),
        centerTitle: true,
      ),
      body: screens[myIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: myIndex,
        onTap: (value) {
          setState(() {
            myIndex = value;
          });
          _setAppBarContent();
        },
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        backgroundColor: const Color(0xFF3fceeb),
        items: _navBarItems,
      ),
    );
  }
}
