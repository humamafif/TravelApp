import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
    required this.username,
    required this.foto,
    required this.alamat,
    required this.saldo,
  });
  final String username, foto, alamat, saldo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage(foto),
              ),
              Text(
                username,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Card(
                color: Colors.blue,
                child: ListTile(
                  leading: const Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  title: Text(
                    alamat,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.blue,
                child: ListTile(
                  leading: const Icon(
                    Icons.monetization_on_rounded,
                    color: Colors.white,
                  ),
                  title: Text(
                    alamat,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
