import 'package:flutter/material.dart';

import '../utils/colors.dart';

TableRow tableRowWidget({required String label, required String value}) {
  return TableRow(
    decoration: const BoxDecoration(
      color: verdeprincipal,
    ),
    children: [
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 15,
              fontFamily: 'Bungee',
              color: Colors.black,
            ),
          ),
        ),
      ),
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            value,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 15,
              fontFamily: 'Bungee',
              color: Colors.black,
            ),
          ),
        ),
      ),
    ],
  );
}
