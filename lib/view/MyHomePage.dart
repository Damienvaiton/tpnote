import 'package:flutter/material.dart';
import 'package:tpnote/view/pages/categories/cartegoriesPage.dart';
import 'package:tpnote/view/pages/detail/detailPage.dart';
import 'package:tpnote/view/pages/home/homePage.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    int selectedIndex = 0;
    
    void setSelectedIndex(int index) {
      setState(() {
        selectedIndex = index;
      });
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        const homePage(),
        const categoriesPage()
      ][selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) => setSelectedIndex(index),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category, color: Colors.black),
            label: 'Categories',
          ),
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
      ),
    );
  }
}
 