import 'package:flutter/material.dart';
import './search_field.dart';
import './mobil_list.dart';
import './mobil_card.dart';

class BerandaPage extends StatelessWidget {
  const BerandaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: SearchField(),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12.0,
                mainAxisSpacing: 12.0,
                mainAxisExtent: 250
              ),
            itemCount: mobilList.length,
            itemBuilder: (_, index){
                return MobilCard(
                    judul: mobilList.elementAt(index)['judul'],
                    harga: mobilList.elementAt(index)['harga'],
                    foto: mobilList.elementAt(index)['foto'],
                );
             }),
          ),
        ),
      )
      );
    }
  }
      