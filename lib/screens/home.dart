import 'package:flutter/material.dart';
import '../components/body.dart';
import '../components/bottom_navigation.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
