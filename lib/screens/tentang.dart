import 'package:flutter/material.dart';

class Tentang extends StatefulWidget {
  const Tentang({super.key});

  @override
  State<Tentang> createState() => _TentangState();
}

class _TentangState extends State<Tentang> {
  var styleTitle = TextStyle(fontSize: 20, fontWeight: FontWeight.w700);
  var styleDetail = TextStyle(fontSize: 12, fontWeight: FontWeight.w700);
  String textTentang =
      '''Kebun Raya Cibodas merupakan UPT balai Konservasi tumbuhan di bawah pusat konservasi Kebun Raya Bogor. 
      Lokasinya berada di antara gunung Gede dan Pangrango di ketinggian 1425 di atas permukaan laut. 
      Areanya sejuk menempati lahan setidaknya seluas 85 Ha.Selain sebagai balai konservasi, Kebun Raya ini juga membuka diri untuk melayani masyarakat sesuai dengan kebutuhannya. 
      Banyak layanan yang ditawarkan kepada masyarakat di antaranya pendidikan Lingkungan dan penelitian. 
      Namun, Kebun Raya ini juga menjadi destinasi wisata karena kesejukan dan keindahan pemandangannya.''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, // ubah warna arrow back (default hitam)
        ),
        title: Text(
          'Tentang',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              width: 300,
              height: 150,
              margin: EdgeInsets.only(top: 30, bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1555865138-193ba536d7e0?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                    fit: BoxFit.cover),
              ),
            ),
            Column(
              children: <Widget>[
                Text(
                  'Cibodas App',
                  style: styleTitle,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50, top: 10, right: 50),
                  child: Text(
                    textTentang,
                    textAlign: TextAlign.center,
                    style: styleDetail,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
