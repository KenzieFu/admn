import 'package:flutter/material.dart';
import 'package:store_responsive_dashboard/components/charts.dart';

import 'package:store_responsive_dashboard/components/status_list.dart';
import 'package:store_responsive_dashboard/constaints.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        StatusList(),
        Charts(),
        SizedBox(
          height: componentPadding,
        ),
      ],
    );
  }
}
