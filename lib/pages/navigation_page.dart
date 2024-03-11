import 'package:flutter/material.dart';
import 'package:exerciseui/pages/home_page.dart';
import 'package:exerciseui/pages/category_page.dart';
import 'package:exerciseui/pages/message_page.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int currentPageIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }

  final List<Widget> _pages = [
    const HomePage(),
    const CategoryPage(),
    const MessagePage(),
    const Center(
      child: Text("PERSON"),
    )
  ];

  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentPageIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Home"),
        ],
        backgroundColor: Colors.white,
        selectedIconTheme: IconThemeData(
          color: Colors.lightBlue.shade900,
        ),
        // iconSize: 24.0,
        selectedItemColor: Colors.lightBlue.shade900,
        unselectedItemColor: Colors.grey.shade300,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        enableFeedback: false,
        selectedFontSize: 24.0,
        onTap: _navigateBottomBar,
      ),
      backgroundColor: Colors.lightBlue[900],
      body: _pages[currentPageIndex],
    );
  }
}
