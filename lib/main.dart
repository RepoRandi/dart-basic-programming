import 'package:basic_programming_dart/home.dart';
import 'package:basic_programming_dart/widget/show_loading_dialog.dart';
import 'package:flutter/material.dart';
import 'widget/show_confirmation_dialog.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            bool? result = await showConfirmationDialog(context);
            if (result == true) {
              // Tampilkan dialog loading
              ShowLoadingDialog.showLoadingDialog(context);

              // Tunggu selama 1 detik
              await Future.delayed(Duration(seconds: 1));

              // Tutup dialog loading
              ShowLoadingDialog.hideLoadingDialog(context);

              // Pindah ke halaman lain
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Home()),
              );
            }
          },
          child: Text('Pindah Halaman'),
        ),
      ),
    );
  }
}
