import 'package:flutter/material.dart';
import 'package:practice/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalog App'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: const Text(
          '30 Days Challenge.',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22),
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
