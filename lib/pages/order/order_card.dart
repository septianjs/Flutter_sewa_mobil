import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  final String judul;
  final String harga;
  final String status;

  const OrderCard({
    super.key,
    required this.judul,
    required this.harga,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              judul,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(harga),
            const SizedBox(height: 8),
            Row(
              children: [
                const Text("Status: "),
                Text(
                  status,
                  style: TextStyle(
                    color: status == "Selesai"
                        ? Colors.green
                        : Colors.orange,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
