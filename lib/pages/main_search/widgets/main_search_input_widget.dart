import 'package:flutter/material.dart';
import 'package:store_responsive_dashboard/constaints.dart';

class MainSearchInputWidget extends StatefulWidget {
  const MainSearchInputWidget({Key? key, required this.searchController}) : super(key: key);
  final TextEditingController searchController;
  @override
  State<MainSearchInputWidget> createState() => _MainSearchInputWidgetState();
}

class _MainSearchInputWidgetState extends State<MainSearchInputWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            decoration: BoxDecoration(
              color: primary.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              controller: widget.searchController,
              maxLines: 1,
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search),
                  hintText: "Cari Barang",
              ),
            ),
          ),
        ),
      ],
    );
  }
}