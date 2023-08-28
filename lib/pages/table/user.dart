import 'package:flutter/material.dart';
import 'package:store_responsive_dashboard/components/table_test.dart';
import 'package:store_responsive_dashboard/dummy_data/dummy_data.dart';
import 'package:store_responsive_dashboard/model/user.dart';

class UserTable extends StatelessWidget {
  const UserTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TableTest(
      columns: UserColumns,
      userData: dummy_user,
    );
  }
}
