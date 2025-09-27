import 'package:flutter/material.dart';
import 'package:task_01_27th_sep/widgets/brand_list.dart';
import 'package:task_01_27th_sep/widgets/model_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  /// Car Data
  final List<String> carBrands = [
    "Tesla",
    "BMW",
    "Mercedes",
    "Audi",
    "Toyota",
    "Honda",
    "Ford",
    "Hyundai",
    "Kia",
    "Nissan",
  ];

  final List<String> carModels = [
    "Model S",
    "X5",
    "C-Class",
    "A4",
    "Camry",
    "Civic",
    "Mustang",
    "Creta",
    "Seltos",
    "Altima",
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      BrandList(carBrands: carBrands),
      ModelList(carModels: carModels),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Cars App"),
        centerTitle: true,
        backgroundColor: Colors.blue.shade100,
      ),
      body: pages[_selectedIndex],

      /// Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        elevation: 10,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.view_list), label: "Brands"),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_stream),
            label: "Models",
          ),
        ],
      ),
    );
  }
}
