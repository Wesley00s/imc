import 'package:flutter/material.dart';

import '../../res/app_color.dart';

class IMCTable extends StatelessWidget {
  const IMCTable({super.key});

  @override
  Widget build(BuildContext context) {
    return DataTable(
      border: TableBorder.all(
        width: .7,
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
      columns: const [
        DataColumn(
          label: Text(
            'IMC (kg/m²)',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        DataColumn(
          label: Text(
            'Classificação',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
      ],
      rows: [
        DataRow(
          color: WidgetStateProperty.all(AppColor.secondaryColor),
          cells: const [
            DataCell(Text('Menor que 18.5')),
            DataCell(Text('Abaixo do peso')),
          ],
        ),
        DataRow(
          color: WidgetStateProperty.all(AppColor.secondaryColor),
          cells: const [
            DataCell(Text('De 18.5 a 24,9')),
            DataCell(Text('Normal')),
          ],
        ),
        DataRow(
          color: WidgetStateProperty.all(AppColor.secondaryColor),
          cells: const [
            DataCell(Text('De 25 a  29,9')),
            DataCell(Text('Sobrepeso')),
          ],
        ),
        DataRow(
          color: WidgetStateProperty.all(AppColor.secondaryColor),
          cells: const [
            DataCell(Text('De 30 a 34,9')),
            DataCell(Text('Obesidade Grau I')),
          ],
        ),
        DataRow(
          color: WidgetStateProperty.all(AppColor.secondaryColor),
          cells: const [
            DataCell(Text('De 35 a 39,9')),
            DataCell(Text('Obesidade Grau II')),
          ],
        ),
        DataRow(
          color: WidgetStateProperty.all(AppColor.secondaryColor),
          cells: const [
            DataCell(Text('Igual ou maior que 40')),
            DataCell(Text('Obesidade Grau III')),
          ],
        ),
      ],
    );
  }
}
