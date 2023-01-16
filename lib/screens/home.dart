import 'package:flutter/material.dart';
import 'package:linguistics_app/components/box.dart';
import 'package:linguistics_app/screens/checkout.dart';
import 'package:linguistics_app/screens/profile.dart';
import 'package:linguistics_app/screens/shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void printHello() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ShopPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello Sir"),
        backgroundColor: Colors.red,
        centerTitle: false,
        actions: [
          GestureDetector(
            onTap: printHello,
            child: const Icon(
              Icons.shop,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfilePage()),
              );
            },
            child: const Icon(
              Icons.add,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CheckOutPage()),
              );
            },
            child: const Icon(
              Icons.check,
            ),
          ),
        ],
      ),
      body: ListView(
        children: const [
          IconBoxCustom(
            icon: Icons.abc,
          ),
          IconBoxCustom(
            icon: Icons.ac_unit,
          ),
        ],
      ),
    );
  }
}
