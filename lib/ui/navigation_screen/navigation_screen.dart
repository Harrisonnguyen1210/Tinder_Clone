import 'package:flutter/material.dart';
import 'package:tinder_clone/common/palette.dart';
import 'package:tinder_clone/ui/screens.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  late int _selectedIndex;
  final _tabIcons = [Icons.local_fire_department_rounded, Icons.star];
  final _tabIconColors = [pink, yellow];

  Widget _buildIcon(int index) {
    return IconButton(
      onPressed: () => _onTabPressed(index),
      color: _selectedIndex == index ? _tabIconColors[index] : grey,
      icon: Icon(_tabIcons[index]),
    );
  }

  void _onTabPressed(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _getBody() {
    return IndexedStack(
      index: _selectedIndex,
      children: [HomeScreen(), LikeScreen()],
    );
  }

  @override
  void initState() {
    super.initState();
    _selectedIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: _tabIcons
              .asMap()
              .entries
              .map((mapEntry) => _buildIcon(mapEntry.key))
              .toList(),
        ),
      ),
      body: _getBody(),
    );
  }
}
