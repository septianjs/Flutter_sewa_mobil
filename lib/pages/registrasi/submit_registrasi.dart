import 'package:flutter/material.dart';

class SubmitRegistrasi extends StatelessWidget {
  final VoidCallback onSubmit; // 👈 PARAMETER WAJIB

  const SubmitRegistrasi({
    super.key,
    required this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onSubmit, // 👈 DIPAKAI DI SINI
        child: const Text(
          "Daftar",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
