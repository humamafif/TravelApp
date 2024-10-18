import 'package:flutter/material.dart';
import 'package:uts/data.dart';
import 'package:uts/detail_page.dart';
import 'package:uts/profile_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfilePage(
                      foto: dataUser[0].foto,
                      username: dataUser[0].username,
                      saldo: dataUser[0].saldo,
                      alamat: dataUser[0].alamat,
                    ),
                  ));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage(dataUser[0].foto),
              ),
            ),
          ),
        ],
        title: const Text(
          "Travel App",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding:
                  EdgeInsets.only(right: 100, left: 16, top: 20, bottom: 8),
              child: Text(
                "Mau kemana hari ini?",
                style: TextStyle(
                  height: 1.2,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(4),
              child: TextField(
                controller: searchController,
                decoration: const InputDecoration(
                  hintText: 'Search Destination..',
                  hintStyle: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.w400),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  prefixIcon: Icon(Icons.search, color: Colors.blue),
                ),
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                "Untuk kamu",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailPage(
                                  namaDestinasi: data[index].namaDestinasi,
                                  gambar: data[index].gambarDestinasi,
                                  deskripsi: data[index].deskripsi,
                                  harga: data[index].harga,
                                ),
                              ));
                        },
                        child: Container(
                          height: 200,
                          width: 300,
                          margin: const EdgeInsets.only(left: 12),
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(15),
                              ),
                              image: DecorationImage(
                                image: AssetImage(data[index].gambarDestinasi),
                                fit: BoxFit.cover,
                              )),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                "Wisata Terdekat",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              height: 285,
              child: GridView.builder(
                itemCount: data.length,
                scrollDirection: Axis.vertical,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(
                            namaDestinasi: data[index].namaDestinasi,
                            gambar: data[index].gambarDestinasi,
                            deskripsi: data[index].deskripsi,
                            harga: data[index].harga,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(data[index].gambarDestinasi),
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
