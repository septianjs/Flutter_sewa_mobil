import 'package:flutter/material.dart';
import '../order/order_data.dart';

class TombolPesan extends StatelessWidget {
  final String judul;
  final String harga;

  const TombolPesan({
    super.key,
    required this.judul,
    required this.harga,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          // SIMPAN ORDER
          OrderData.orders.add({
            "judul": judul,
            "harga": harga,
            "status": "Diproses",
          });

          // PINDAH KE TAB ORDER
          Navigator.popUntil(context, (route) => route.isFirst);
        },
        child: const Text("Pesan"),
      ),
    );
  }
}
