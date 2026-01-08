import 'package:flutter/material.dart';
import '../login/login_page.dart';

class TombolLogin extends StatelessWidget {
  const TombolLogin({super.key});


@override
  Widget build(BuildContext context) {
   return Container(
    height: 60,
    width: MediaQuery.of(context).size.width - 48,
    child: ElevatedButton(
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder:
            (context) => LoginPage()));
      },  
      child: Text(
        "Login",
        style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue
        ),
    ),
      style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(width: 3, color: Colors.blue)
              )
          
    ),
    ),
   );
  }
}