import 'package:flutter/material.dart';
import 'package:store_responsive_dashboard/constaints.dart';

import 'widgets/main_search_appbar_widget.dart';
import 'widgets/main_search_input_widget.dart';

class MainSearchScreen extends StatefulWidget {
  const MainSearchScreen({Key? key}) : super(key: key);

  static final routeName = "/main-search-screen";

  @override
  State<MainSearchScreen> createState() => _MainSearchScreenState();
}

class _MainSearchScreenState extends State<MainSearchScreen> {
  late final TextEditingController _searchController;

  @override
  void initState() {
    _searchController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MainSearchInputWidget(searchController: _searchController),
              const SizedBox(
                height: 30,
              ),
              Text("Pencarian Terbaru",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 17,
              ),),
              const SizedBox(height: 10,),
              Text("Belum ada pencarian."),
            ],
          ),
        ), );
  }
}
