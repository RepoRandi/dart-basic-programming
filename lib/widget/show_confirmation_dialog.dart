import 'package:flutter/material.dart';

Future<bool?> showConfirmationDialog(BuildContext context) async {
  return await showDialog<bool>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Konfirmasi'),
        content: Text('Apakah Anda yakin ingin pindah halaman?'),
        actions: <Widget>[
          TextButton(
            child: Text('Tidak'),
            onPressed: () {
              Navigator.of(context).pop(false); // Mengembalikan nilai false
            },
          ),
          TextButton(
            child: Text('Ya'),
            onPressed: () {
              Navigator.of(context).pop(true); // Mengembalikan nilai true
            },
          ),
        ],
      );
    },
  );
}
