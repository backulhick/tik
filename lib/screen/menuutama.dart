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
        title: Text("Kejuruan TIK"),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return DetailScreen();
                }));
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
                            place.name
                          )
                        ],
                      ),
                    ))
              ],
            ),
          ),
        )
      })

      /*
      InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DetailScreen();
          }));

        },
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Image.asset('assets/images/pemrograman.jpg'),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        'Pemrograman',
                        style: const TextStyle(fontSize: 16.0),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text('program')
                    ],
                  ),
                ),
              ),

              Expanded(
                flex: 1,
                child: Image.asset('assets/images/network.jpg'),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        'Networking',
                        style: const TextStyle(fontSize: 16.0),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text('Networking')
                    ],
                  ),
                ),
              ),

              Expanded(
                flex: 1,
                child: Image.asset('assets/images/desain.jpeg'),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        'Design Graphics',
                        style: const TextStyle(fontSize: 16.0),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text('Desain grafis')
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      */

    );
  }
}
