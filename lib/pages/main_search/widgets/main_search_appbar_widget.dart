import 'package:flutter/material.dart';

class MainSearchAppBarWidget extends StatelessWidget {
  const MainSearchAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 245, 248, 254),
      padding: const EdgeInsets.only(top: 40, left: 10, right: 10, bottom: 10),
      height: 100,
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
                Icons.arrow_back,
              size: 20,
              weight: 700,
            ),
          ),
          const SizedBox(width: 10,),
          const Text(
            "Pencarian",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
