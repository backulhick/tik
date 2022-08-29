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
      backgroundColor: Color(0xff4458be),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 24,
                  right: 24,
                  top: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello, user',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xfff2cd55),
                          ),
                        ),
                        SizedBox(height: 3),
                        Text(
                          'anda mencari pelatihan apa?',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Icon(Icons.person),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color(0xff4458be),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Telusuri pelatihan',
                    hintStyle: TextStyle(color: Color(0xff4458be)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final JurusanTik place = jurusanTikList[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DetailScreen(place: place);
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
                            child: Container(
                              color: Colors.lightGreen,
                              child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          place.name,
                                          style:
                                              const TextStyle(fontSize: 16.0),
                                        ),
                                        const SizedBox(height: 10),
                                        Icon(Icons.thumb_up,
                                        color: Colors.black,),
                                        const SizedBox(height: 10),
                                      ],
                                  ),
                              ),
                            ),
                        )
                      ],
                    ),
                    ),
                  );
                },
                itemCount: jurusanTikList.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
