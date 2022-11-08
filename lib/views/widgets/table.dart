import 'package:flutter/material.dart';

class TablaTile extends StatelessWidget {
  const TablaTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: DataTable(
            columnSpacing: 0,
            headingRowColor: MaterialStateProperty.all(Theme.of(context).primaryColor),
            headingRowHeight: 40,
            dataRowColor: MaterialStateProperty.all(const Color(0xFFF3F3F3)),
            headingTextStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),
            columns: const [
              DataColumn(label: Text("Tipo")),
              DataColumn(label: Text("Fecha")),
              DataColumn(label: Positioned(left: 0, child: Text("Estado",))),
            ],
            rows: [
              DataRow(
                color: MaterialStateProperty.all(Colors.grey[80]),
                cells: const [
                  DataCell(Text("Consumos")),
                  DataCell(Text("23/10/2020 13:21")),
                  DataCell(Align(alignment: Alignment.centerRight, child: CircleAvatar(radius: 8, backgroundColor: Colors.green,))),
                ],
              ),
              DataRow(
                color: MaterialStateProperty.all(Colors.grey[80]),
                cells: const [
                  DataCell(Text("Consumos")),
                  DataCell(Text("19/10/2020 10:20")),
                  DataCell(Align(alignment: Alignment.centerRight, child: CircleAvatar(radius: 8, backgroundColor: Colors.green,))),
                ],
              ),
              DataRow(
                color: MaterialStateProperty.all(Colors.grey[80]),
                cells: const [
                  DataCell(Text("Potencias")),
                  DataCell(Text("05/02/2020 20:35")),
                  DataCell(Align(alignment: Alignment.centerRight, child: CircleAvatar(radius: 8, backgroundColor: Colors.red,))),
                ],
              ),
              DataRow(
                color: MaterialStateProperty.all(Colors.grey[80]),
                cells: const [
                  DataCell(Text("Datos")),
                  DataCell(Text("23/10/2020 23:40")),
                  DataCell(Align(alignment: Alignment.centerRight, child: CircleAvatar(radius: 8, backgroundColor: Colors.green,))),
                ],
              ),
              DataRow(
                color: MaterialStateProperty.all(Colors.grey[80]),
                cells: const [
                  DataCell(Text("Potencias")),
                  DataCell(Text("23/10/2020 08:23")),
                  DataCell(Align(alignment: Alignment.centerRight, child: CircleAvatar(radius: 8, backgroundColor: Colors.red,))),
                ],
              ),
              DataRow(
                color: MaterialStateProperty.all(Colors.grey[80]),
                cells: const [
                  DataCell(Text("Potencias")),
                  DataCell(Text("23/10/2020 08:23")),
                  DataCell(Align(alignment: Alignment.centerRight, child: CircleAvatar(radius: 8, backgroundColor: Colors.green,))),
                ],
              ),
              DataRow(
                color: MaterialStateProperty.all(Colors.grey[80]),
                cells: const [
                  DataCell(Text("Consumos")),
                  DataCell(Text("23/10/2020 08:23")),
                  DataCell(Align(alignment: Alignment.centerRight, child: CircleAvatar(radius: 8, backgroundColor: Colors.green,))),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}