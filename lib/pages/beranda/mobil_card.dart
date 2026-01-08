import 'package:flutter/material.dart';
import '../beranda/tombol_pesan.dart';

class MobilCard extends StatelessWidget {
  final String judul;
  final String harga;
  final String foto;

  const MobilCard({super.key, required this.judul, required this.harga, required this.foto});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Wrap(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8.0),
              topRight: Radius.circular(8.0)
            ),
          child: Image.asset(
            foto,
            height: 170,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(judul, style: TextStyle(fontWeight: FontWeight.w700)),
                Text(harga, style: TextStyle(fontWeight: FontWeight.w700)),
                TombolPesan(
                  judul: judul,
                  harga: harga,
                )

              ],
            ),
          )
        ]
      ),
    );
  }          
}
