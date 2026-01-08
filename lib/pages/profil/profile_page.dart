import 'package:flutter/material.dart';
import '../order/order_list_page.dart';
import '../order/order_data.dart';
import 'package:sewa_mobil/user/user_data.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profil"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [

          /// FOTO & NAMA
          Column(
            children: [
              const CircleAvatar(
                radius: 45,
                backgroundColor: Colors.blue,
                child: Icon(Icons.person, size: 50, color: Colors.white),
              ),
              const SizedBox(height: 10),
              Text(
                UserData.nama,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                UserData.email,
                style: const TextStyle(color: Colors.grey),
              ),
            ],
          ),



          /// MENU PROFIL
          Card(
            child: Column(
              children: [

                /// ORDER SAYA
                ListTile(
                  leading: const Icon(Icons.shopping_bag),
                  title: const Text("Order Saya"),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => OrderListPage(
                          orders: OrderData.orders,
                        ),
                      ),
                    );
                  },
                ),

                const Divider(height: 1),

                /// TENTANG
                ListTile(
                  leading: const Icon(Icons.info),
                  title: const Text("Tentang Aplikasi"),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {
                    showAboutDialog(
                      context: context,
                      applicationName: "Rental Mobil App",
                      applicationVersion: "1.0.0",
                      applicationLegalese: "© 2026 Septian",
                    );
                  },
                ),

                const Divider(height: 1),

                /// LOGOUT
                ListTile(
                  leading: const Icon(Icons.logout, color: Colors.red),
                  title: const Text(
                    "Logout",
                    style: TextStyle(color: Colors.red),
                  ),
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Logout berhasil")),
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
