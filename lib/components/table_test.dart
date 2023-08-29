import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:store_responsive_dashboard/constaints.dart';
import 'package:store_responsive_dashboard/model/user.dart';

/// Example without a datasource
class TableTest extends StatelessWidget {
  final List columns;
  final List<User> userData;
  const TableTest({required this.columns, required this.userData});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFF21222D).withOpacity(0.1),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Donatur List",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: DataTable(
                            columnSpacing: 0,
                            horizontalMargin: 0,
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
                                  DataCell(Text(userData[index].nama)),
                                  DataCell(Text(userData[index].date)),
                                  DataCell(userData[index].icon),
                                ]))),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(child: Text("Ekspor Data ")),
                      const SizedBox(width: 20,),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: primary.withOpacity(0.9),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(".pdf", style: TextStyle(
                              color: Colors.white,
                            ),textAlign: TextAlign.center,),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(child: Text("Impor Data ")),
                      const SizedBox(width: 20,),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: primary.withOpacity(0.9),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text("Pilih file", style: TextStyle(
                              color: Colors.white,
                            ),textAlign: TextAlign.center,),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFF21222D).withOpacity(0.1),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Investor List",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: DataTable(
                            columnSpacing: 0,
                            horizontalMargin: 0,
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
                                  DataCell(Text(userData[index].nama)),
                                  DataCell(Text(userData[index].date)),
                                  DataCell(userData[index].icon),
                                ]))),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(child: Text("Ekspor Data ")),
                      const SizedBox(width: 20,),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: primary.withOpacity(0.9),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(".pdf", style: TextStyle(
                              color: Colors.white,
                            ),textAlign: TextAlign.center,),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(child: Text("Impor Data ")),
                      const SizedBox(width: 20,),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: primary.withOpacity(0.9),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text("Pilih file", style: TextStyle(
                              color: Colors.white,
                            ),textAlign: TextAlign.center,),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
