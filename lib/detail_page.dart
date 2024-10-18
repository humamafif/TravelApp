import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage(
      {super.key,
      required this.namaDestinasi,
      required this.gambar,
      required this.deskripsi,
      required this.harga});

  final String namaDestinasi, gambar, deskripsi;
  final int harga;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(15),
              height: MediaQuery.of(context).size.height / 2,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(12.0),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(gambar),
                ),
              ),
            ),
            Text(
              namaDestinasi,
              style: const TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Harga Tiket: Rp. $harga",
              style: const TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                deskripsi,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
