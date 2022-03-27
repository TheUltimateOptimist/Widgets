# Table

- ## What it does:
  If there is no need for scrolling you can align widgets in a grid like manner using the Table widget.

- ## How it works:
  Create a table widget. Give its children attribute a collection of TableRow widgets. In addition you can specify the defaultVerticalAlignment atribute to conrol the how the widgets are aligned vertically in each TableRow. Moreover you can give the Table widget a defaultColumnWidth to force a specific width onto each of the table's columns. Interestingly you can also control the width of specifc columns by specifying the Tables columnWidths attribute. Lastly setting the border attribute lets you give the Table widget any border you want.

- ## Nice to know:
  To specify a column width you can use either the FixedColumnWidth or the FractionColumnWidth constructor.

- ## Example Code:
  [View on Github](https://github.com/TheUltimateOptimist/Widgets/blob/master/example_writer/lib/table_example.dart)

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