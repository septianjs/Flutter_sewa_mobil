import 'package:flutter/material.dart';
import './order_card.dart';

class OrderListPage extends StatelessWidget {
  final List<Map<String, String>> orders;

  const OrderListPage({
    super.key,
    required this.orders,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Order Saya"),
        centerTitle: true,
      ),
      body: orders.isEmpty
          ? const Center(
              child: Text(
                "Belum ada order",
                style: TextStyle(fontSize: 16),
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: orders.length,
              itemBuilder: (context, index) {
                final order = orders[index];
                return OrderCard(
                  judul: order["judul"]!,
                  harga: order["harga"]!,
                  status: order["status"]!,
                );
              },
            ),
    );
  }
}
