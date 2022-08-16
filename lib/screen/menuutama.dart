import 'package:flutter/material.dart';
import 'package:tik/screen/detail_screen.dart';
import 'package:tik/jurusan_tik.dart';

class MenuUtama extends StatefulWidget {
  const MenuUtama({Key? key}) : super(key: key);

  @override
  State<MenuUtama> createState() => _MenuUtamaState();
}

class _MenuUtamaState extends State<MenuUtama> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
       title: const Text("Kejuruan TIK")
      ),

      body: ListView.builder(
          itemBuilder: (context, index) {
            final JurusanTik place = jurusanTikList[index];
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return DetailScreen(place: place);
                    }
                )
                );
              },

              child: Card(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Image.asset(place.imageAsset),
                      ),
                      Expanded(
                          flex: 2,
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      place.name,
                                      style: const TextStyle(fontSize: 16.0),
                                    ),
                                    const SizedBox(
                                        height: 10
                                    )
                                  ]
                              )
                          )
                      )
                    ],
                  )
              ),
            );
          }
      )
    );
  }
}
