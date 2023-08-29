import 'package:flutter/material.dart';
import 'package:store_responsive_dashboard/components/news_list.dart';
import 'package:store_responsive_dashboard/layout/sidebar.dart';
import 'package:store_responsive_dashboard/layout/topbar.dart';

import '../constaints.dart';

class MainLayout extends StatelessWidget {
  final Widget child;
  final String title;
  
  final void Function(int) setCurrentIndex;
  MainLayout({Key? key, required this.child, required this.setCurrentIndex, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    final _showDesktop = _size.width >= screenXxl;
    return Scaffold(
        body: SafeArea(
      child: Row(
        children: [
          SideBar(setCurrentIndex: setCurrentIndex),
          Expanded(
            child: Column(
              children: [
                TopBar(setCurrentPageIndex: setCurrentIndex, title: title,),
                Expanded(
                    child: SingleChildScrollView(
                        child: Padding(
                  child: this.child,
                  padding: EdgeInsets.all(componentPadding),
                )))
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
