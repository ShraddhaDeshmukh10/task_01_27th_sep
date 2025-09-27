import 'package:flutter/material.dart';

class BrandList extends StatelessWidget {
  final List<String> carBrands;

  const BrandList({super.key, required this.carBrands});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: carBrands.length,
      itemBuilder: (context, index) {
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 4,
          margin: const EdgeInsets.symmetric(vertical: 8),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue.shade100,
              child: const Icon(Icons.directions_car, color: Colors.blue),
            ),
            title: Text(
              carBrands[index],
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text("Brand"),
            trailing: const Icon(Icons.arrow_forward_ios, size: 18),
          ),
        );
      },
    );
  }
}
