import 'package:flutter/material.dart';
import 'package:flutter_sosyalmedya/gonderikarti.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: const Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
          color: Colors.grey,
          iconSize: 32,
        ),
        title: const Text(
          "SocialWorld",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.air_sharp,
                color: Colors.purple,
                size: 32,
              ))
        ],
      ),
      body: ListView(
        // aşağı doğru kaydırılan bitmeyen sayfa
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
                color: Colors.grey[100],
                boxShadow: const [  // gölgelendirme
                  BoxShadow( color: Colors.grey,
                    offset: Offset(0.0, 2.0),)
                ]),
            child: ListView(
              scrollDirection:
                  Axis.horizontal, // yatay şeklinde kaymasını sağlar
              children: [
                ProfilKartiOlustur("Burak",
                    "https://img-s1.onedio.com/id-563c8dc5bd0520dd55d410b9/rev-0/w-620/f-jpg/s-ab181c6f715dc7b13825ff3a86dab25552521547.jpg"),
                ProfilKartiOlustur("Şafak",
                    "https://cdn.dsmcdn.com/mnresize/500/-/ty356/product/media/images/20220309/13/66279146/17107690/1/1_org.jpg"),
                ProfilKartiOlustur("Enes",
                    "https://cdn.sementa.com/erkek-oduncu-gomlek-bordo-gomlek-sementa-67860-15-K.jpg"),
                ProfilKartiOlustur("Ayhan",
                    "https://cdn-nau.akinon.net/products/2021/07/27/20696/1d056a25-2a63-4d2f-9eb9-53b8227ffe36_size596x596_quality100_cropCenter.jpg"),
                ProfilKartiOlustur("Ayzet",
                    "https://www.wpdurum.com/uploads/thumbs/yakisikli-erkek-profil-resimleri.jpg"),
                ProfilKartiOlustur("han",
                    "https://cdn.pixabay.com/photo/2017/01/16/19/54/ireland-1985088_960_720.jpg"),
              ],
            ),
          ),
          SizedBox(height: 10,),

          GonderiKarti(),
          GonderiKarti(),
        ],
      ),
    );
  }

  Padding ProfilKartiOlustur(String kullaniciadi, String resimlinki) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 2, color: Colors.grey),
              //çerçeve
              borderRadius: BorderRadius.circular(35),
              // container kenarlarını düzenleme ve yuvarlak yapma
              image: DecorationImage(
                  image: NetworkImage(resimlinki),
                  fit: BoxFit.cover // resmi container a doldurur
                  ),
            ),
          ),
          SizedBox(height: 5),
          Text(kullaniciadi),
        ],
      ),
    );
  }
}


