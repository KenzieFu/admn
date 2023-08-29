import 'package:flutter/material.dart';
import 'package:store_responsive_dashboard/constaints.dart';
import 'package:store_responsive_dashboard/pages/dashboard.dart';

class TopBar extends StatelessWidget {

  final Function setCurrentPageIndex;
  final String title;
  const TopBar({Key? key, required this.setCurrentPageIndex, required this.title}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      height: topBarHeight,
      padding: EdgeInsets.symmetric(horizontal: componentPadding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(

                    title,

                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                ),
                Positioned(
                  child: Container(
                    height: 4,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(4)),
                  ),
                  bottom: 0,
                  left: 0,
                )
              ],
            ),
          ),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            IconButton(
              icon: Icon(
                Icons.search,
                color: Theme.of(context).primaryColor,
              ),
              onPressed: () {
                setCurrentPageIndex(4);
              },
            ),
            IconButton(
              icon: Icon(
                Icons.notifications_outlined,
                color: Theme.of(context).primaryColor,
              ),
              onPressed: () {},
            ),
          ])
        ],
      ),
    );
  }
}
