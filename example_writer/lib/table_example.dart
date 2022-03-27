      import 'package:flutter/material.dart';

      class TableExample extends StatelessWidget {
        const TableExample({Key? key}) : super(key: key);

        @override
        Widget build(BuildContext context) {
          return Scaffold(
            body: Center(
              child: Table(
                border: TableBorder.all(
                  color: Colors.green,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      8,
                    ),
                  ),
                ),
                columnWidths: const {
                  1: FixedColumnWidth(
                    150,
                  ),
                },
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                defaultColumnWidth: const FixedColumnWidth(
                  100,
                ),
                children: [
                  MyTableRow(1),
                  MyTableRow(2),
                  MyTableRow(3),
                ],
              ),
            ),
          );
        }
      }

      class MyTableRow extends TableRow {
        MyTableRow(int rowNumber)
            : super(
                children: [
                  for (int i = 0; i < 3; i++) Text("Row $rowNumber"),
                ],
              );
      }
