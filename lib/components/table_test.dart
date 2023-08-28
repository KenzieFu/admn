import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:store_responsive_dashboard/model/user.dart';

/// Example without a datasource
class TableTest extends StatelessWidget {
  final List columns;
  final List<User> userData;
  const TableTest({required this.columns, required this.userData});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      height: 400,
      child: SingleChildScrollView(
        child: DataTable(
            columnSpacing: 12,
            horizontalMargin: 12,
            /*   minWidth: 600, */
            columns: columns.map((c) {
              return DataColumn2(
                size: ColumnSize.L,
                label: Text(c),
              );
            }).toList(),
            rows: List<DataRow>.generate(
                userData.length,
                (index) => DataRow(cells: [
                      DataCell(Text((userData[index].id).toString())),
                      DataCell(Text(userData[index].name)),
                    ]))),
      ),
    );
  }
}
