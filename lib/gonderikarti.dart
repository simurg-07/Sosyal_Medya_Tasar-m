import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GonderiKarti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Material(
        borderRadius: BorderRadius.circular(12),
        elevation: 1, // container tabanı gölge çizgisi
        child: Container(
          padding: EdgeInsets.all(0),
          width: double.infinity,
          height: 380,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                blurRadius: 2.0,
                spreadRadius: 0.0,
                offset: Offset(2.0, 2.0),
              )
            ],
            borderRadius: BorderRadius.circular(12),
            // container içi kenar gölgelendirme
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    // 2 row yapmanın amacı spaceBetween özelliğini kullanmak için
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.indigo,
                          image: const DecorationImage(
                              image: NetworkImage(
                                  "https://cdn.sementa.com/erkek-oduncu-gomlek-bordo-gomlek-sementa-67860-15-K.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(width: 12),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Enes",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Text(
                              "1 saat önce",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            )
                          ]),
                    ],
                  ),
                  Icon(Icons.more_vert),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              const Text(
                "Malatyammm",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              const SizedBox(
                height: 12,
              ),
              Image.network(
                "https://cdn.pixabay.com/photo/2015/06/28/15/53/apricots-824626_960_720.jpg",
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ikonlubuton(
                    ikonum: Icons.favorite,
                    yazi: "Beğen",
                    fonksiyonum: () {
                      print("beğeni butonuna basıldı");
                    },
                  ),
                  ikonlubuton(
                      ikonum: Icons.comment,
                      yazi: "Yorum Yap",
                      fonksiyonum: () {
                        print("yorum yap butonuna basıldı");
                      }),
                  TextButton.icon(
                      onPressed: () {
                        print("paylaş butonuna basıldı");
                      },
                      icon: Icon(
                        Icons.share,
                        color: Colors.grey,
                      ),
                      label: Text(
                        "Paylaş",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ikonlubuton extends StatelessWidget {
  final IconData? ikonum;
  final String? yazi;

  final fonksiyonum;

  ikonlubuton({
    this.ikonum,
    this.yazi,
    this.fonksiyonum,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      // tıklama animasyonu için kullandık
      child: InkWell(
        // container a tıklama özelliği kazandırdı
        onTap: fonksiyonum,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            child: Row(
              children: [
                Icon(ikonum, color: Colors.grey),
                SizedBox(
                  width: 5,
                ),
                Text(
                  yazi!,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
