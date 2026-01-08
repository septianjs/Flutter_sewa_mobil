import 'package:flutter/material.dart';
import '../welcome/main_pages.dart';

class SubmitLogin extends StatelessWidget {
  const SubmitLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width - 2 * 24,
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (context) => MainPage(),
            ),
            (route) => false,
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue[900],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Text("Login",style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
