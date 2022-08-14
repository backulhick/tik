import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tik/screen/menuutama.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    AppBar myAppbar = AppBar(
      title: const Text('Kejuruan TIK'),
      centerTitle: true,
      elevation: 0,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[Colors.green, Colors.blue])),
      ),
    );

    return Scaffold(
      appBar: myAppbar,
      body: Column(
        children: <Widget>[
          Center(
            child: Lottie.asset("assets/it.json"),
          ),
          Center(
            child: ElevatedButton(
              child: const Text("Start"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MenuUtama()));
              },
            ),
          )
        ],
      ),
    );
  }
}
