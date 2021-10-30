// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:thesis_final/screens/pages/dashboard.dart';
import 'package:thesis_final/screens/pages/maps.dart';
import 'package:thesis_final/screens/pages/ticket.dart';
import 'package:thesis_final/screens/pages/trips.dart';
import 'package:thesis_final/screens/pages/profile.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedPage = 0;
  final _pageOptions = [Home(), Trips(), Maps(), Ticket(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Batangas Bus Booking'),
        backgroundColor: Colors.blue,
      ),
      body: _pageOptions[selectedPage],
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.blue,
        style: TabStyle.fixedCircle,
        height: 60,
        items: [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.directions_bus, title: 'Trips'),
          TabItem(icon: Icons.location_on_outlined, title: 'Location'),
          TabItem(icon: Icons.theaters_outlined, title: 'Tickets'),
          TabItem(icon: Icons.person_outline, title: 'Profile'),
        ],
        initialActiveIndex: 0,
        onTap: (int i) {
          setState(() {
            selectedPage = i;
          });
        },
      ),
    );
  }
}
