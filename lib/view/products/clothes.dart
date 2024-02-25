import 'package:flutter/material.dart';
import 'package:heo_final_project/model/appbar_model/non_logo_appbar_model.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import '../../constant/constant.dart';
import '../../ext/text_style.dart';

class ClothesProducts extends StatefulWidget {
  const ClothesProducts({super.key});

  @override
  State<ClothesProducts> createState() => _ClothesProductsState();
}

class _ClothesProductsState extends State<ClothesProducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NonLogoAppBarModel(
        getTitle: () => "Clothes",
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 24, right: 24, top: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClothesCard("bot.png", "Bot", "15"),
              SizedBox(height: 15),
              ClothesCard("kazak.png", "Kazak", "15"),
              SizedBox(height: 15),
              ClothesCard("mont.png", "Mont", "15"),
              SizedBox(height: 15),
              ClothesCard("pantolon.png", "Pantolon", "15"),
              SizedBox(height: 15),
              ClothesCard("tişört.png", "Tişört", "15"),
              SizedBox(height: 15),
              ClothesCard(
                  "şapka ve eldiven.png", "Şapka ve Eldiven", "15"),
            ],
          ),
        ),
      ),
    );
  }

  Future<String> downloadImageUrl(String imageName) async {
    String imageUrl = '';

    try {
      firebase_storage.Reference ref = firebase_storage.FirebaseStorage.instance
          .ref()
          .child('Products/Clothes/$imageName');

      imageUrl = await ref.getDownloadURL();
    } catch (e) {
      print('Hata: $e');
    }

    return imageUrl;
  }

  Widget ClothesCard(String imageName, String title, String price) {
    return FutureBuilder<String>(
      future: downloadImageUrl(imageName),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          String imageUrl = snapshot.data ?? '';

          return Container(
            child: Row(
              children: [
                Image.network(imageUrl),
                Container(
                  height: 165,
                  width: 165,
                  color: Constant.grey300,
                  child: Stack(
                    children: [
                      Column(children: [
                        Center(
                          child: Text(
                            title,
                            style: ExtPageText.TxtStyle(
                                FontWeight.w800, 26, Constant.black),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          price + " tl",
                          style: ExtPageText.TxtStyle(
                              FontWeight.w500, 16, Constant.black),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Icon(Icons.add_circle),
                      ])
                    ],
                  ),
                )
              ],
            ),
          );
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}
