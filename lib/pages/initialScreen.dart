import 'package:flutter/material.dart';
import 'package:store_responsive_dashboard/components/charts.dart';
import 'package:store_responsive_dashboard/components/status_list.dart';
import 'package:store_responsive_dashboard/components/table_test.dart';
import 'package:store_responsive_dashboard/constaints.dart';
import 'package:store_responsive_dashboard/layout/main_layout.dart';
import 'package:store_responsive_dashboard/pages/dashboard.dart';
import 'package:store_responsive_dashboard/pages/main_search/main_search_screen.dart';
import 'package:store_responsive_dashboard/pages/table/user.dart';
import '../components/order_table.dart';

class InitialScreen extends StatefulWidget {
  InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  int _currentIndex = 0;

  List mainScreens = [
    Dashboard(),
    UserTable(),
    Container(),
    Container(),
    MainSearchScreen(),
  ];

  List titles = [
    "Dashboard",
    "Donatur",
    "Container",
    "Container",
    "Cari",
  ];
  
  setCurrentIndex(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: titles[_currentIndex],
      child: mainScreens[_currentIndex],
      setCurrentIndex: setCurrentIndex,
    );
  }
}
