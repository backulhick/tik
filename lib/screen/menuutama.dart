import 'package:flutter/material.dart';

class MenuUtama extends StatelessWidget {
  const MenuUtama({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu Utama"),
      ),
    );
  }
}
