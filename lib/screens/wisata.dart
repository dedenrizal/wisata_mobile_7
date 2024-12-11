import 'package:flutter/material.dart';
import 'package:wisata_mobile_7/models/destination_model.dart';
import 'package:wisata_mobile_7/screens/tentang.dart';
import 'package:wisata_mobile_7/utils/const.dart';

class Wisata extends StatefulWidget {
  const Wisata({super.key});

  @override
  State<Wisata> createState() => _WisataState();
}

class _WisataState extends State<Wisata> {
  var styleTitle = TextStyle(fontSize: 20, fontWeight: FontWeight.w700);
  var styleDetail = TextStyle(fontSize: 12, fontWeight: FontWeight.w700);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        title: Text(
          'Wisata',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: <Widget>[
          GestureDetector(
            child: Card(
              elevation: 10,
              margin: EdgeInsets.only(left: 10, top: 10, right: 10),
              child: Stack(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width * 0.37,
                        height: MediaQuery.of(context).size.height * 0.12,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1683772965002-67c1f0a6d5fd?q=80&w=2148&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 50),
                        child: Center(
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Judul Wisata 1',
                                style: styleTitle,
                              ),
                              Text(
                                'Keterangan',
                                style: styleDetail,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Tentang(), // ganti lokasi page
                ),
              );
            },
          ),
          GestureDetector(
            child: Card(
              elevation: 10,
              margin: EdgeInsets.only(left: 10, top: 10, right: 10),
              child: Stack(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width * 0.37,
                        height: MediaQuery.of(context).size.height * 0.12,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://images.unsplash.com/photo-1571366343168-631c5bcca7a4?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 50),
                        child: Center(
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Judul Wisata 2',
                                style: styleTitle,
                              ),
                              Text(
                                'Keterangan',
                                style: styleDetail,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Tentang(), // ganti lokasi page
                ),
              );
            },
          ),
          GestureDetector(
            child: Card(
              elevation: 10,
              margin: EdgeInsets.only(left: 10, top: 10, right: 10),
              child: Stack(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width * 0.37,
                        height: MediaQuery.of(context).size.height * 0.12,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://images.unsplash.com/photo-1724258391590-6cfdc2d783b4?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 50),
                        child: Center(
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Judul Wisata 3',
                                style: styleTitle,
                              ),
                              Text(
                                'Keterangan',
                                style: styleDetail,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Tentang(), // ganti lokasi page
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
