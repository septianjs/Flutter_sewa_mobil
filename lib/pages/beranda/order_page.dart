import 'package:flutter/material.dart';
import '../beranda/konfimasi_page.dart';

class OrderPage extends StatelessWidget {
  final String judul;
  final String harga;

  const OrderPage({
    super.key,
    required this.judul,
    required this.harga,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pemesanan")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(judul, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text(harga, style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
           ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => KonfirmasiPage(
                    judul: judul,
                    harga: harga,
                  ),
                ),
              );
            },
            child: const Text("Konfirmasi Pesanan"),
          ),
          ],
        ),
      ),
    );
  }
}
